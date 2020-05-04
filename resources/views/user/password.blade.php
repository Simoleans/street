@extends('layouts.blank')



@section('content')
  
<div class="col-lg-12" id="convocatoria">
  <div class="title-row animate">
    <div class="animate-container">
      <h3 class="section-subtitle section-subtitle--line"> Contraseña</h3>
      <h2 class="section-title">Editar Contraseña</h2>
      <!-- <p class="section-description">Creative solutions with
      a strategic focus. We grow brands, create experiences and solve business problems.</p> -->
    </div>
  </div>
</div>
<div class="col-md-12">
  <form action="{{route('update_password')}}" method="POST"  id="form_profile">
  @csrf
  @method('patch')
   <small>Debe ser máximo 10 caracteres y mínimo 8 caracteres</small>
    <div class="row">

      <div class="col-md-6">

        <div class="form-group">

          <label for="password">Nueva Contraseña</label>
          <input type="password" id="password" class="form-control" name="password"   required="" maxlength="10" minlength="8">
          
        </div>

      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="password_confirmation">Repetir contraseña</label>
          <input type="password" id="password_confirmation" class="form-control" name="password_confirmation"  required="" maxlength="10" minlength="8">
        </div>
      </div>
    <div class="col-md-12 float-right">
      <input type="submit" class="btn btn--lg btn--color" value="Editar Contraseña">
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