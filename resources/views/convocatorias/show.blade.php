@extends('layouts.blank')


@section('content')


<style type="text/css">
  p {
    font-size: 1.5em; 
  }
</style>

<div class="col-md-12">
  <div class="title-row">
    <h3 class="section-subtitle section-subtitle--line">{{ $convoc->fecha }}</h3>
    <h2 class="section-title">{{ strtoupper($convoc->titulo) }}</h2>
  </div>
</div>
</div>

<div class="row">
   <div class="col-lg-6">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
          
          <p>Cliente: <strong>{{ isset($convoc->client->name) ? $convoc->client->name : 'N/T' }}</strong></p>
          <p>Productora: <strong>{{ isset($convoc->productora->nombre) ? $convoc->productora->nombre : 'N/T' }}</strong></p>
          <p>Fecha de Filmación: <strong>{{ $convoc->fecha_prueba }}</strong></p>
          <p>Fecha de Callback: <strong>{{ $convoc->fecha_callback }}</strong></p>
          <p>Fecha de Ensayo: <strong>{{ $convoc->fecha_ensayo }}</strong></p>
          <p>Duración (meses): <strong>{{ $convoc->duracion.' Meses' }}</strong></p>
          <p>Medio: <strong>{{ isset($convoc->medio->nombre) ? $convoc->medio->nombre : 'N/T' }}</strong></p>
          <p>Territorio: <strong>{{ isset($convoc->territorio->nombre) ? $convoc->territorio->nombre : 'N/T' }}</strong></p>
          
          
         
        </div>  
      </div>
    </div>          
  </div> 
  <div class="col-lg-6">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
          
          <p>Tipo: <strong>{{$convoc->tipo == 'N' ? 'Nacional' : 'Internacional' }}</strong></p>
          <p>Producto: <strong>{{ $convoc->producto ? : 'N/T' }}</strong></p>
          <p>Día del Casting: <strong>{{ $convoc->dia_casting ? : 'N/T' }}</strong></p>
          <p>Presupuesto: <strong>{{ $convoc->presupuesto ? : 'N/T' }}</strong></p>
          <p>Dirección: <strong>{{ $convoc->direccion ? : 'N/T' }}</strong></p>
          <p>Región: <strong>{{ isset($convoc->region->region) ? $convoc->region->region : 'N/T' }}</strong></p>
          <p>Comuna: <strong>{{ isset($convoc->comuna->comuna) ? $convoc->comuna->comuna : 'N/T' }}</strong></p>
          <p>Competencia: <strong>{{ $convoc->printCompetencia() }}</strong></p> 
        </div>  
      </div>
    </div>          
  </div> 
</div>
<div class="row">
  <div class="col-md-12">
    <div class="title-row">
      <h2 class="section-subtitle section-subtitle--line"></h2>
      <h2 class="section-title">Papeles</h2>
    </div>
  </div>
  @foreach($convoc->papels as $p)
    <div class="col-lg-4">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
          <p>Nombre Del Rol: <strong><a href="{{ route('convopapel.show',['convopapel' => $p->id]) }}">{{ $p->nombre_rol }}</a></strong></p>
          <p>Descripción del rol: <strong>{{ $p->descripcion_rol }}</strong></p>
          <p>Edad Desde: <strong>{{ $p->edad_desde }}</strong></p>
          <p>Edad Hasta: <strong>{{ $p->edad_hasta }}</strong></p>
          <p>Sexo: <strong>{{ $p->sexo == 'F' ? 'Femenino' : 'Masculino' }}</strong></p>
          <p>Presupuesto: <strong>{{ $p->presupuesto_papel }}</strong></p>
          <p>Modelos: {{ count($p->convocatoriaUser) }}</p>
        </div>  
      </div>
    </div>          
  </div> 
  @endforeach
</div>


@endsection

