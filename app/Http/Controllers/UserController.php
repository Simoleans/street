<?php

namespace App\Http\Controllers;

use App\Regiones;
use App\Nacionalidad;
use App\User;
use App\Idioma;
use App\UserIdioma;
use App\UserOcupacion;
use App\UserOcio;
use App\UserPerfil;
use App\Comunas;
use App\Ocio;
use App\UserMeta;
use App\Ocupacion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Support\Facades\Input;
use App\Image;



class UserController extends Controller
{
 
 

    private function getToken($email, $password)
    {
        $token = null;
        //$credentials = $request->only('email', 'password');
        try {
            if (!$token = JWTAuth::attempt(['email' => $email, 'password' => $password])) {
                return response()->json([
                    'response' => 'error',
                    'message' => 'Password or email is invalid',
                    'token' => $token
                ]);
            }
        } catch (JWTAuthException $e) {
            return response()->json([
                'response' => 'error',
                'message' => 'Token creation failed',
            ]);
        }
        return $token;
    }

    public function login(Request $request)
    {
        $user = \App\User::where('email', $request->email)->get()->first();
        if ($user && \Hash::check($request->password, $user->password)) // The passwords match...
        {
            $token = self::getToken($request->email, $request->password);
            $user->auth_token = $token;
            $user->save();
            $response = ['success'=>true, 'data'=>['id'=>$user->id,'auth_token'=>$user->auth_token,'name'=>$user->name, 'email'=>$user->email]];           
        }
        else 
          $response = ['success'=>false, 'data'=>'Record doesnt exists','email'=>$request->email];
      
        return response()->json($response, 201);
    }

    public function register(Request $request)
    { 
        $payload = [
            'password'=>\Hash::make($request->password),
            'email'=>$request->email,
            'name'=>$request->firstName,
            'lastname'=>$request->lastName,
            'rol_id'=>2,
            'status'=>1,
            'auth_token'=> ''
        ];
                  
        $user = new \App\User($payload);
        if ($user->save())
        {
            
            $token = self::getToken($request->email, $request->password); // generate user token
            
            if (!is_string($token))  return response()->json(['success'=>false,'data'=>'Token generation failed'], 201);
            
            $user = \App\User::where('email', $request->email)->get()->first();
            
            $user->auth_token = $token; // update user token
            
            $user->save();
            
            $response = ['success'=>true, 'data'=>['name'=>$user->name,'id'=>$user->id,'email'=>$request->email,'auth_token'=>$token]];        
        }
        else
            $response = ['success'=>false, 'data'=>'Couldnt register user'];
        
        
        return response()->json($response, 201);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::where('rol_id', '!=', 1)->where('status',1)->get();

        // $meta = UserMeta::groupBy('user_id')->where('meta_key','fecha_nac')->orderBy('fecha_nac', 'desc')->get();

        // dd($meta);

        return view('user.index', ['users' => $user]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $regiones = Regiones::all();
        $nacionalidad = Nacionalidad::all();
        $ocio = Ocio::all();
        $idioma= Idioma::all();
        $ocupacion = Ocupacion::all();

        return view('user.create',['regiones' => $regiones,'nacionalidad' => $nacionalidad,'ocio'=>$ocio,'idiomas'=>$idioma,'ocupacion' => $ocupacion]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request->all());
        $this->validate($request, [
            // 'name'   => 'required',
            'email'    => 'required|email|unique:users',
            // 'password' => 'required|min:7|confirmed',
        ]);

        $user = new User;
        $user->fill($request->only(['name','lastname','email']));
        $user->password = bcrypt($request->input('telefono'));
        $user->rol_id = 2;

        if ($user->save()) {

                // UserPerfil::createPerfil($request);
                
                $perfil = new UserPerfil;
                $perfil->fill($request->except(['_token','name','lastname','email','avatar','idiomas','ocio','ocupacion','_method']));
                $perfil->user_id = $user->id;
                $perfil->fecha_nac = Carbon::parse($request->fecha_nac);
                $perfil->edad = Carbon::parse($request->fecha_nac)->age;
                $perfil->save();

               Image::createImage($request,$user->id);
               
               if ($request->idiomas != null) 
                {
                   foreach ($request->idiomas as $idioma) {
                        UserIdioma::create(['user_id' => $user->id,
                                            'idioma_id' => $idioma
                                           ]);
                    }
                }else{
                    true;
                }

                if ($request->ocupacion != null) 
                {
                   foreach ($request->ocupacion as $ocupacion) {
                     UserOcupacion::create(['user_id' => $user->id,
                                            'ocupacion_id' => $ocupacion
                                           ]);
                    }
                }else{
                    true;
                }

                if ($request->ocio != null) 
                {
                   foreach ($request->ocio as $ocio) {
                      UserOcio::create(['user_id' => $user->id,
                                        'ocio_id' => $ocio
                                       ]);
                    }
                }else{
                    true;
                }

             return redirect()->route('user.index')->with('success', ' Se registro  exitósamente');
        } else {
             return redirect()->route('user.index')->with('danger', 'Error');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $user = User::findOrfail($id);

        return view('user.view', ['perfil' => $user]);
    }

    public function perfil()
    {
        $user = Auth::user();
        $meta = UserMeta::where('user_id', Auth::user()->id)->where('meta_key', '!=', 'avatar')->get();
        $metaExists = UserMeta::where('user_id', Auth::user()->id)->exists();

        return view('user.perfil', ['perfil' => $user, 'meta' => $meta,'existeMeta' => $metaExists]);
    }

    public function update_perfil(Request $request)
    {
        $user = User::find(Auth::user()->id);



        $this->validate($request, [
            'name'  => 'required',
            'email' => 'required|email|unique:users,email,' . $user->id . ',id',
        ]);

        $user->fill($request->all());

        if ($request->input('checkbox') === "Yes") {
            $this->validate($request, [
                'password' => 'required|min:6|confirmed',
            ]);
            $user->password = bcrypt($request->input('password'));
        }

        if ($user->save()) {
            return redirect()->route('user.profile')->with('success', ' Se modifico tu perfil correctamente');
        } else {
             return redirect()->route('user.profile')->with('error', ' ¡Error!');
        }


    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $user = User::findOrfail($id);
        $regiones = Regiones::all();
        $nacionalidad = Nacionalidad::all();
        $ocio = Ocio::all();
        $idioma= Idioma::all();
        $ocupacion = Ocupacion::all();
        $comunasId = Comunas::where('comuna','like', '%'.getMeta('user','comuna',$user->id).'%')->first();
        //dd($comunasId);
        if ($comunasId != null) {
            $comunas = Comunas::where('region_id',$comunasId->region_id)->get();
        }else{
            $comunas = Comunas::all();
        }
        

        return view('user.edit',['perfil' => $user,'regiones' => $regiones,'nacionalidad' => $nacionalidad,'ocio'=>$ocio,'idiomas'=>$idioma,'ocupacion' => $ocupacion,'comunas' => $comunas]);

        //return view('user.edit', ['user' => $user]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //  $this->validate($request, [
        //     'email'    => 'required|email|unique:users',
        // ]);

       //dd(request()->file('avatar'));

        $array = $request->except(['_token','name','lastname','email','file','idiomas','ocio','ocupacion','_method','user_user_id']);
        // $ocioS = $request->only('ocio')['ocio'];
        // //dd($array->telefono);
        // unset($array['ocio']);
        // $a = implode(', ',$array);

        // array_push($array, $a);

               
            //dd($array);
        

        //$meta = new UserMeta;
        if (request()->file('avatar') != null) {
            $img = new Image();
            $img->title = $request->name.'-'.$request->lastname;
            $img->path = Storage::disk('s3')->put('images/users', request()->file('avatar'),'public');
            $img->size = $request->file('avatar')->getSize();
            $img->auth_by = Auth::user()->id;
            $img->save();
            $array['avatar'] = $img->id;
        }
        
        
        $user = User::findOrfail($request->user_user_id);
        $user->name =  $request->name;
        $user->lastname =  $request->lastname;
        $user->email = $request->email;
        $user->password = bcrypt($request->telefono);
        // $user->rol_id = 2;

            if ($user->save()) {
                setMeta('edit','user','genero',$user->id,$array['genero']);
               
                 foreach ($array as $key => $value) {
                         
                     setMeta('edit','user',$key,$user->id,$value);
                }

                // if ($request->fecha_nac != null) {
                   
                //     setMeta('user','edad',$user->id,CalculateEdad($request->fecha_nac));
                
                // }  

                if ($request->idiomas != null) 
                {
                   foreach ($request->idiomas as $idioma) {
                    setMeta('edit','user','idiomas',$user->id,$idioma,'multiple');
                    }
                }else{
                    true;
                }

                // if ($request->idiomas != null) {
                //    foreach ($request->idiomas as $idioma) {
                //     setMeta('user','idiomas',$user->id,$idioma,'multiple','edit');
                //  }
                // }else{
                //     true;
                // }
                 if ($request->ocio != null) {
                    foreach ($request->ocio as $ocio) {
                        setMeta('edit','user','ocio',$user->id,$ocio,'multiple');
                    }
                }else{
                    true;
                }
                 if ($request->ocupacion != null) {
                    foreach ($request->ocupacion as $ocupacion) {
                        setMeta('edit','user','ocupacion',$user->id,$ocupacion,'multiple');
                    }
                }else{
                    true;
                }

                     return redirect()->route('user.show',['user' =>$user->id])->with('success', ' Se modifico  exitósamente');

            
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::findOrfail($id);

        $user->status = 0;

        if ($user->save()) {
            return response()->json(['msg' => 'User Eliminado','status' => true]);
        } else {
            return response()->json(['msg' => 'Error','status' => false]);
        }


    }

     public function comunas($region)
    {
        return Regiones::comunas_ajax($region);
    }

    public function regiones($nacionalidad)
    {
        return Regiones::regiones_ajax($nacionalidad);
    }

    public function search_form(Request $request)
    {
        //dd($request->all());
        $data = UserPerfil::result($request);
        $datos = [];
        if (count($data->data) <= 0) {
            $datos [] = '<div class="col-lg-12">
                            <h3>No se encontraron resultados</h3>         
                          </div>';
        }
        foreach ($data->data as $m) {
            $datos [] = '<div class="col-lg-5">
                            <div class="animate">
                                <div class="team">
                                  <img src="'.image($m->user->foto->path).'" alt="team 1" class="team__img">
                                  <h4 class="team__name"><a href="'.route('user.show',['user' => $m->user->id]).'">'.strtoupper($m->user->name.' '.$m->user->lastname).'</a></h4>
                                  <span class="team__position">'.$m->user->description().'</span>
                                </div>  
                            </div>          
                          </div>';
        }



        return response()->json($datos);
    }

    public function profile()
    {
   
        $user = User::findOrfail(AuthID());

        return view('user.profile',['user' => $user]);
    }

    public function profile_password()
    {
        $user = User::findOrfail(AuthID());

        return view('user.password',['user' => $user]);
    }

    public function update_profile()
    {
        $user = User::findOrfail(AuthID());

        return view('user.profileUpdate',['user' => $user]);
    }

    public function update_password(Request $request)
    {

        $user = User::findOrfail(AuthID());

        if ($request->password == $request->password_confirmation) {
           $user->password = bcrypt($request->password);
           if ($user->save()) {
                return redirect()->route('user.profile')->with('success', ' Se modifico su contraseña correctamente');
            } else {
                 return redirect()->route('user.profile')->with('error', ' ¡Error!');
            }
        }else{
            return redirect()->route('user.profile')->with('error', ' Su contraseña no coincide!');
        }
        
    }
}
