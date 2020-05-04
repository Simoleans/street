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
      <h2 class="section-title">Editar Perfil <a href="{{ route('password.profile') }}" class="btn btn--lg btn--stroke pull-right">Editar Contraseña</a></h2>
      <!-- <p class="section-description">Creative solutions with
      a strategic focus. We grow brands, create experiences and solve business problems.</p> -->
    </div>
  </div>
</div>
<div class="col-md-12">
  <form action="{{route('update_perfil')}}" method="POST"  id="form_profile">
  @csrf
  @method('patch')
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label for="name">Nombre</label>
          <input type="text" id="name" class="form-control" name="name" value="{{ $user->name }}"  required="">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="lastname">Apellido</label>
          <input type="text" id="lastname" class="form-control" name="lastname"  value="{{ $user->lastname }}" required="">
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="text" id="email" class="form-control" name="email"  value="{{ $user->email }}" required="">
        </div>
      </div>

    <div class="col-md-12 float-right">
      <input type="submit" class="btn btn--lg btn--color" value="Editar">
    </div>
  </div> <!-- fin row -->
  
</form>
</div>



@endsection

@section('script')
<script src="{{asset('js/sweetalert2@8.js')}}"></script>
<script type="text/javascript">
  $(document).ready(function() {

  $('#form_profile').find('input[required], select[required]').each(function() { // buscar select e input required para agregarle el 
     var $label = $("label[for='"+$(this).attr('name')+"']")
     $label.append('<small style="color: red"> (*)</small>')
  });
  

  });
</script>
@endsection