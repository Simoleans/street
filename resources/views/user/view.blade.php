@extends('layouts.blank')


@section('content')


<style type="text/css">
  p {
    font-size: 1.5em; 
  }
</style>

<div class="col-md-12">
  <div class="title-row">
    <h3 class="section-subtitle section-subtitle--line">{{ $perfil->description() }} </h3>
    <h2 class="section-title">{{ strtoupper($perfil->fullName()) }}
      @if(Auth::user()->isAdmin())
          <span class="pull-right"><a href="{{ route('user.edit',['user' => $perfil->id]) }}" class="btn btn--lg btn--dark">Editar</a></span>
      @endif
    </h2>
  </div>
</div>
</div>
<div class="row">
  <div class="col-lg-10 offset-2">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
           <img src=" {{ image($perfil->foto->path) }} " alt="team 1" class="team__img">
        </div>  
      </div>
    </div>          
  </div> 
   <div class="col-lg-4">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
          <p>Nombre Completo: <strong>{{ $perfil->fullName() }}</strong></p>
          <p>Email: <strong><a href="mailto:{{ $perfil->email }}">{{ $perfil->email }}</a></strong></p>
          <p>Telefono: <strong>{{ $perfil->perfil->telefono }}</strong></p> 
          <p>Sexo: <strong>{{ $perfil->perfil->sexo == 'M' ? 'Masculino' : 'Femenino' }}</strong></p>
          <p>Genero: <strong>{{ $perfil->perfil->genero }}</strong></p>
          <p>RUT: <strong>{{ $perfil->perfil->rut }}</strong></p>
          <p>Fecha de nacimiento: <strong>{{ $perfil->perfil->fecha_nac }}</strong></p>
          <p>Nacionalidad: <strong>{{ $perfil->perfil->nacionalidad->GENTILICIO_NAC }}</strong></p>
          <p>Ocio: <strong>{{ $perfil->printOcio() }}</strong></p>
        </div>  
      </div>
    </div>          
  </div> 
  <div class="col-lg-4">
    <div class="animate">
      <div class="animate-container">
        <div class="team"> 
          <p>Idiomas: <strong>{{ $perfil->printIdiomas() }}</strong></p>
          <p>Ocupación: <strong>{{ $perfil->printOcupacion() }}</strong></p>
          <p>Región: <strong>{{ isset($perfil->perfil->region->region) ? $perfil->perfil->region->region : 'N/T' }}</strong></p>
          <p>Comuna: <strong>{{ isset($perfil->perfil->comuna->comuna) ? $perfil->perfil->comuna->comuna : 'N/T' }}</strong></p>
          <p>Dirección: <strong>{{ $perfil->perfil->direccion ? : 'N/T' }}</strong></p> 
          <p>Facebook: <strong>{{ $perfil->perfil->facebook ? : 'N/T' }}</strong></p> 
        </div>  
      </div>
    </div>          
  </div> 
  <div class="col-lg-4">
    <div class="animate">
      <div class="animate-container">
        <div class="team"> 
          <p>Instagram: <strong>{{ $perfil->perfil->instagram ? : 'N/T' }}</strong></p>
          <p>Calzado: <strong>{{ $perfil->perfil->calzado ? : 'N/T' }}</strong></p>
          <p>Altura: <strong>{{ $perfil->perfil->altura ? : 'N/T' }}</strong></p>
          <p>Talla Pantalón: <strong>{{ $perfil->perfil->talla_pantalon ? : 'N/T' }}</strong></p>
          <p>Talla Camisa: <strong>{{ $perfil->perfil->talla_camisa ? : 'N/T' }}</strong></p>
          <p>Notas: <strong>{{ $perfil->perfil->notas ? : 'N/T' }}</strong></p>
          <p>Derechos: <strong>{{ $perfil->perfil->derechos ? : 'N/T' }}</strong></p> 
          <p>Comerciales Realizados: <strong>{{ $perfil->perfil->comerciales ? : 'N/T' }}</strong></p> 
        </div>  
      </div>
    </div>          
  </div>
</div>
<div class="row">
  <div class="col-md-12">
    <div class="title-row">
      <h2 class="section-subtitle section-subtitle--line"></h2>
      <h2 class="section-title">Convocatorias</h2>
    </div>
  </div>
  {{-- @foreach($perfil->papels as $p)
    <div class="col-lg-4">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
          <p>Nombre Del Rol: <strong>{{ getMeta('convocatoria_papels','nombre_rol',$p->id) }}</strong></p>
          <p>Descripción del rol: <strong>{{ getMeta('convocatoria_papels','descripcion_rol',$p->id) }}</strong></p>
          <p>Edad Desde: <strong>{{ getMeta('convocatoria_papels','edad_desde',$p->id) }}</strong></p>
          <p>Edad Hasta: <strong>{{ getMeta('convocatoria_papels','edad_hasta',$p->id) }}</strong></p>
          <p>Sexo: <strong>{{ getMeta('convocatoria_papels','sexo',$p->id) == 'F' ? 'Femenino' : 'Masculino' }}</strong></p>
          <p>Presupuesto: <strong>{{ getMeta('convocatoria_papels','presupuesto_papel',$p->id) }}</strong></p>
        </div>  
      </div>
    </div>          
  </div> 
  @endforeach --}}
</div>


@endsection

