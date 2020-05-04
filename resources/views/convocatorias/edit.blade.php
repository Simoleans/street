@extends('layouts.app')

@section('content')

<div class="row">
  <div class="col-md-8 offset-2">
    <div class="card">
      <div class="card-header">
        <h4 class="card-title" id="basic-layout-form">Editar Convocatoria</h4>
        <hr>
      </div>
      <div class="card-content">
        <div class="px-3">
          <form class="form" action="{{route('convocatoria.update',['id' => $c->id])}}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-body">
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="projectinput1">Titulo</label>
                    <input type="text" id="projectinput1" class="form-control" name="titulo" value="{{$c->titulo}}">
                  </div>
                </div>
               <!--  <div class="col-md-6">
                  <div class="form-group">
                    <label for="projectinput2">Last Name</label>
                    <input type="text" id="projectinput2" class="form-control" name="lname">
                  </div>
                </div> -->
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="projectinput3">Fecha</label>
                    <input type="text" id='datetimepicker4' class="form-control fe" name="fecha" value="{{$c->fecha}}">
                  </div>
                </div>
                
            </div>

            <div class="form-actions">
              <!-- <button type="button" class="btn btn-raised btn-raised btn-warning mr-1">
                <i class="ft-x"></i> Cancelar
              </button> -->
              <button type="submit" class="btn btn-raised btn-raised btn-primary">
                <i class="fa fa-check-square-o"></i> Modificar
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection

