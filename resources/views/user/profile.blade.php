@extends('layouts.blank')

@section('head')
<link rel="stylesheet" type="text/css" href="{{asset('css/fileinput.css')}}">
<style>
.fileinput-remove-button{
  display: none !important;
}

.kv-avatar .krajee-default.file-preview-frame,.kv-avatar .krajee-default.file-preview-frame:hover {
    margin: 0;
    padding: 0;
    border: none;
    box-shadow: none;
    text-align: center;
}

.fileinput-upload-button{
  display: none !important;
}
.kv-avatar {
    display: inline-block;
}
.kv-avatar .file-input {
    display: table-cell;
    width: 213px;
}
.kv-reqd {
    color: red;
    font-family: monospace;
    font-weight: normal;
}
</style>
@endsection

@section('content')

<div class="col-lg-12" id="convocatoria">
  <div class="title-row animate">
    <div class="animate-container">
      <h3 class="section-subtitle section-subtitle--line"> Perfil</h3>
      <h2 class="section-title">Perfil Principal <a href="{{ route('password.profile') }}" class="btn btn--lg btn--stroke pull-right">Editar Contraseña</a></h2>
      <!-- <p class="section-description">Creative solutions with
      a strategic focus. We grow brands, create experiences and solve business problems.</p> -->
    </div>
  </div>
</div>
<div class="col-md-12">
  <form>
  @csrf

    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label for="fecha">Nombre</label>
          <input type="text" id="name" class="form-control" name="name" value="{{ $user->name }}" readonly="">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="fecha_prueba">Apellido</label>
          <input type="text" id="lastname" class="form-control" name="lastname" readonly="" value="{{ $user->lastname }}">
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
          <label for="fecha_callback">Email</label>
          <input type="text" id="email" class="form-control" name="email" readonly="" value="{{ $user->email }}">
        </div>
      </div>

    <div class="col-md-12 float-right">
      <a href="{{ route('user.profile.update') }}" class="btn btn--lg btn--color">Editar Perfil</a>
    </div>
  </div> <!-- fin row -->
  
</form>
</div>

@endsection
