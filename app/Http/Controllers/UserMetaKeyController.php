<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\UserMeta;
use App\User;
use App\Image;

class UserMetaKeyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $this->validate($request, [
            'email'    => 'required|email|unique:users',
        ]);

       //dd(request()->file('avatar'));

        $array = $request->except(['_token','name','lastname','email','file','idiomas','ocio','ocupacion','_method']);
        // $ocioS = $request->only('ocio')['ocio'];
        // //dd($array->telefono);
        // unset($array['ocio']);
        // $a = implode(', ',$array);

        // array_push($array, $a);

               

        //dd($array);

        //$meta = new UserMeta;

        $img = new Image();
        $img->title = $request->name.'-'.$request->lastname;
        $img->path = Storage::disk('s3')->put('images/users', request()->file('avatar'),'public');
        $img->size = $request->file('avatar')->getSize();
        $img->auth_by = Auth::user()->id;
        $img->save();
        $array['avatar'] = $img->id;
        
        $user = new User;
        $user->name =  $request->name;
        $user->lastname =  $request->lastname;
        $user->email = $request->email;
        $user->password = bcrypt($request->telefono);
        $user->rol_id = 2;

            if ($user->save()) {
               
                 foreach ($array as $key => $value) {
                         
                     setMeta($edit = null,'user',$key,$user->id,$value);
                }

                // if ($request->fecha_nac != null) {
                   
                //     setMeta('user','edad',$user->id,CalculateEdad($request->fecha_nac));
                
                // }  
                // AWS_ACCESS_KEY_ID=AKIAWYIWYN7DIQEBVFOO
                // AWS_SECRET_ACCESS_KEY=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
                // AWS_DEFAULT_REGION=sa-east-1
                // AWS_BUCKET=app.streetcastingchile.cl

                if ($request->idiomas != null) 
                {
                   foreach ($request->idiomas as $idioma) {
                    setMeta($edit = null,'user','idiomas',$user->id,$idioma,'multiple');
                    }
                }else{
                    true;
                }

                
                 if ($request->ocio != null) {
                    foreach ($request->ocio as $ocio) {
                        setMeta($edit = null,'user','ocio',$user->id,$ocio,'multiple');
                    }
                }else{
                    true;
                }
                 if ($request->ocupacion != null) {
                    foreach ($request->ocupacion as $ocupacion) {
                        setMeta($edit = null,'user','ocupacion',$user->id,$ocupacion,'multiple');
                    }
                }else{
                    true;
                }

                     return redirect()->route('user.index')->with('success', ' Se registro  exitósamente');

            
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
       
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    
}
