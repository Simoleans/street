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

.border-input {
  border: solid 2px red !important;
}
</style>
@endsection

@section('content')
<div class="col-lg-12" id="convocatoria">
  @if(count($errors) > 0)
    <div class="form-group">
      <div class="alert alert-danger alert-important">
        <ul class="m-0">
          @foreach($errors->all() as $error)
            <li>{{ $error }}</li>
          @endforeach
        </ul>
      </div>
    </div>
  @endif
	<div class="title-row animate">
		<div class="animate-container">
			<h3 class="section-subtitle section-subtitle--line">Formulario</h3>
			<h2 class="section-title">Registrar Modelo</h2>
			<!-- <p class="section-description">Creative solutions with
			a strategic focus. We grow brands, create experiences and solve business problems.</p> -->
		</div>
	</div>
</div>
<div class="col-md-12">
	<form action="{{route('user.store')}}" method="POST" enctype="multipart/form-data" id="form_modelo">
	@csrf
	<div class="row">
		<div class="col-md-7">
		    <div class="kv-avatar">
              <div class="file-loading">
                  <input id="avatar-2" name="avatar" type="file" required>
              </div>
            </div>
		</div>
		 <div class="col-md-6">
        <div class="form-group">
          <label for="name">Nombre</label>
          <input type="text" id="nombre" class="form-control" name="name" value="{{ old('name') }}" required>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="lastname">Apellido</label>
          <input type="text" id="apellido" class="form-control" name="lastname" value="{{ old('lastname') }}" required>
        </div>
      </div>
      
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label for="email">E-mail</label>
          <input type="email" id="email" class="form-control{{ $errors->has('email') ?  ' border-input' : '' }}"   name="email" required>
           @if ($errors->has('email'))
              <span class="invalid-feedback" role="alert">
                  <strong style="color: red;">{{ $errors->first('email') }}</strong>
              </span>
            @endif
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="sexo">Sexo</label>
          <select class="form-control" name="sexo" required>
            <option value="">Seleccionar...</option>
            <option value="F" {{ old('sexo') == 'F' ? 'selected' : '' }}>Femenino</option>
            <option value="M" {{ old('sexo') == 'M' ? 'selected' : '' }}>Masculino</option>
          </select>   
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="genero">Genero</label>
          <select class="form-control" name="genero" required>
            <option value="">Seleccionar...</option>
            <option value="N/A" {{ old('genero') == 'N/A' ? 'selected' : '' }}>No Aplica</option>
            <option value="Trans" {{ old('genero') == 'Trans' ? 'selected' : '' }}>Trans</option>
            <option value="Gay" {{ old('genero') == 'Gay' ? 'selected' : '' }}>Gay</option>
            <option value="Lesbiana" {{ old('genero') == 'Lesbiana' ? 'selected' : '' }}>Lesbiana</option>
          </select>   
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="rut">RUT</label>
            <input type="text" class="form-control mb-3" oninput="checkRut(this)" name="rut" value="{{old('rut')}}" />
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="fecha_nac"><i class="fa fa-birthday-cake" aria-hidden="true"></i> Fecha Nacimiento</label>
            <input type="text" class="form-control mb-3 fe " required name="fecha_nac" value="{{old('fecha_nac')}}" autocomplete="off" required />

        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="nacionalidad">Nacionalidad</label>
          <select class="form-control nacionalidad" name="nacionalidad_id" required>
            <option value="">Seleccione...</option>
            @foreach($nacionalidad as $r)
              <option value="{{$r->id}}" {{ ($r->GENTILICIO_NAC == 'CHILENA')?'selected':''}}   data-id="{{$r->id}}">{{$r->GENTILICIO_NAC}}</option>
            @endforeach   
          </select> 
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="ocupacion">Ocupación</label>
          <select class="form-control select-multiple" name="ocupacion[]" multiple="" size="5" id="ocupacion_select">
            @foreach($ocupacion as $o)
              <option value="{{$o->id}}" {{in_array($o->id, old("ocupacion") ?: []) ? "selected": ""}}>{{$o->nombre}}</option>
            @endforeach
          </select>
           <small><a href="#" id="ocupacion">Crear Ocupación</a></small>
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="idiomas">Idiomas</label>
          <select class="form-control select-multiple" name="idiomas[]"  multiple="" size="4" id="idioma_select">
            @foreach($idiomas as $r)
              <option value="{{$r->id}}" {{in_array($r->id, old("idiomas") ?: []) ? "selected": ""}}>{{$r->idioma}}</option>
            @endforeach   
          </select> 
          <br>
           <small><a href="#" id="idioma">Crear Idioma</a></small>
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
          <label for="ocio">Ocio</label>
          <select class="form-control select-multiple" name="ocio[]" multiple="multiple" id="ocio_select_html">
            @foreach($ocio as $o)
              <option value="{{$o->id}}" {{in_array($o->id, old("ocio") ?: []) ? "selected": ""}}>{{$o->ocio}}</option>
            @endforeach
          </select>
           <small><a href="#" id="ocio" >Crear Ocio</a></small>
        </div>
      </div>
      
  
      <div class="col-md-6">
        <div class="form-group">
          <label for="region">Región</label>
          <select class="form-control region" name="region_id" >
            <option value="">Seleccione...</option>
            @foreach($regiones as $r)
              <option value="{{$r->id}}" data-id="{{$r->id}}" >{{$r->region}}</option>
            @endforeach   
          </select> 
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="comuna">Comuna</label>
          <select class="form-control comunas" name="comuna_id" disabled >
            <option value="">Selecciona una Región</option>
          </select>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="direccion">Dirección</label>
          <input type="text" class="form-control" name="direccion" value="{{ old('direccion') }}">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="telefono"><i class="fa fa-phone"></i> Teléfono</label>
          <input type="number" id="telefono" class="form-control" name="telefono" value="{{ old('telefono') }}" >
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="facebook">Facebook</label>
          <input type="text" id="facebook" class="form-control" name="facebook" value="{{ old('facebook') }}" >
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="instagram">Instagram</label>
          <input type="text" id="instagram" class="form-control" name="instagram" placeholder="@modelo" value="{{ old('instagram') }}">
        </div>
      </div>
      
      <div class="col-md-6">
        <div class="form-group">
          <label for="calzado">Calzado</label>
          <input type="number" id="calzado" class="form-control" name="calzado" value="{{ old('calzado') }}">
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="altura">Altura</label>
          <input type="number" min="0" max="3" step="0.01" id="altura" class="form-control" name="altura" value="{{ old('altura') }}">
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="pantalon">Talla Pantalón</label>
          <input type="text" id="pantalon" class="form-control" name="talla_pantalon" value="{{ old('talla_pantalon') }}">
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="camisa">Talla Camisa</label>
          <input type="text" id="camisa" class="form-control" name="talla_camisa" value="{{ old('talla_camisa') }}">
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
          <label for="caracteristicas">Notas</label>
          <textarea class="form-control" name="notas" >{{ old('notas') }}</textarea>
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
          <label for="derechos">Derechos</label>
          <textarea class="form-control" name="derechos" >{{ old('derechos') }}</textarea>
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
          <label for="comerciales">Comerciales Realizados</label>
          <textarea class="form-control" name="comerciales" >{{ old('comerciales') }}</textarea>
        </div>
      </div>

		<div class="col-md-12 float-right">
			<input type="submit" class="btn btn--lg btn--color" value="Crear Modelo">
		</div>
	</div> <!-- fin row -->
	
</form>
</div>



@endsection

@section('script')
<script type="text/javascript" src="{{asset('js/fileinput.js')}}"></script>
<script src="{{asset('js/sweetalert2@8.js')}}"></script>
<script type="text/javascript">
	$(document).ready(function() {

  $('#form_modelo').find('input[required], select[required]').each(function() { // buscar select e input required para agregarle el aterisco
     var $label = $("label[for='"+$(this).attr('name')+"']")
     $label.append('<small style="color: red"> (*)</small>')
  });
  
// var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' + 
//     'onclick="alert(\'Call your custom code here.\')">' +
//     '<i class="glyphicon glyphicon-tag"></i>' +
//     '</button>'; 

$("#avatar-2").fileinput({
    overwriteInitial: true,
    maxFileSize: 15000,
    showClose: false,
    showCaption: false,
    showBrowse: false,
    browseOnZoneClick: true,
    removeLabel: '',
    removeIcon: '<i class="ft-x-square"></i>',
    removeTitle: 'Cancelar',
    elErrorContainer: '#kv-avatar-errors-2',
    msgErrorClass: 'alert alert-block alert-danger',
    defaultPreviewContent: '<img src="{{asset("avatar/avatar.jpg")}}" class="img-thumbnail" alt="Your Avatar"><h6 class="text-muted">Click para seleccionar</h6>',
    // layoutTemplates: {main2: '{preview} ' +  btnCust + ' {remove} {browse}'},
    allowedFileExtensions: ["jpg", "png", "gif","jpeg"]
});


});

  $("#ocio").click(function(event) {
      Swal.fire({
        title: 'Crear Ocio',
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off',
          id: 'ocio_value'
        },
        allowOutsideClick: true,
        confirmButtonText: 'Guardar',
        showLoaderOnConfirm: true,
       closeOnCancel: false,
        inputValidator: (value) => {
            if (!value) {
              return '¡Debe escribir algo!'
            }
          },
         preConfirm: (login) => {
          var data = {_token: '{{csrf_token()}}',ocio: $("#ocio_value").val()};
          return fetch('{{route("ocios.store")}}',{
                        method: 'POST', 
                        body: JSON.stringify(data), // data can be `string` or {object}!
                        headers:{
                          'Content-Type': 'application/json'
                        }          
                      })
            .then(response => {
              console.log(response);
              if (!response.ok) {
                throw new Error(response.statusText)
              }
              return response.json()
            })
            .catch(error => {
              Swal.showValidationMessage(
                `Request failed: ${error}`
              )
            })
        },
        allowOutsideClick: () => !Swal.isLoading()
      }).then((result) => {
        if (result.dismiss != "backdrop") {
             Swal.fire({
            title: 'Ocio guardado correctamente',
          })
          var datos = "";
            $.each(result.value.frutas, function(index, val) {
              datos+= '<option value="'+val.id+'">'+val.ocio+'</option>';
            });
            $("#ocio_select_html").html(datos);
        }
         
      })
  });

  $("#idioma").click(function(event) {
      Swal.fire({
        title: 'Crear Idioma',
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off',
          id: 'idioma_value'
        },
        allowOutsideClick: true,
        confirmButtonText: 'Guardar',
        showLoaderOnConfirm: true,
       closeOnCancel: false,
        inputValidator: (value) => {
            if (!value) {
              return '¡Debe escribir algo!'
            }
          },
         preConfirm: (login) => {
          var data = {_token: '{{csrf_token()}}',idioma: $("#idioma_value").val()};
          return fetch('{{route("idiomas.store")}}',{
                        method: 'POST', 
                        body: JSON.stringify(data), // data can be `string` or {object}!
                        headers:{
                          'Content-Type': 'application/json'
                        }          
                      })
            .then(response => {
              console.log(response);
              if (!response.ok) {
                throw new Error(response.statusText)
              }
              return response.json()
            })
            .catch(error => {
              Swal.showValidationMessage(
                `Request failed: ${error}`
              )
            })
        },
        allowOutsideClick: () => !Swal.isLoading()
      }).then((result) => {
        if (result.dismiss != "backdrop") {
             Swal.fire({
            title: 'Idioma guardado correctamente',
          })
          var datos = "";
            $.each(result.value.idioma, function(index, val) {
              datos+= '<option value="'+val.id+'">'+val.idioma+'</option>';
            });
            $("#idioma_select").html(datos);
        }
         
      })
  });

  $("#ocupacion").click(function(event) {
      Swal.fire({
        title: 'Crear Ocupación',
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off',
          id: 'ocupacion_value'
        },
        allowOutsideClick: true,
        confirmButtonText: 'Guardar',
        showLoaderOnConfirm: true,
       closeOnCancel: false,
        inputValidator: (value) => {
            if (!value) {
              return '¡Debe escribir algo!'
            }
          },
         preConfirm: (login) => {
          var data = {_token: '{{csrf_token()}}',ocupacion: $("#ocupacion_value").val()};
          return fetch('{{route("ocupacions.store")}}',{
                        method: 'POST', 
                        body: JSON.stringify(data), // data can be `string` or {object}!
                        headers:{
                          'Content-Type': 'application/json'
                        }          
                      })
            .then(response => {
              console.log(response);
              if (!response.ok) {
                throw new Error(response.statusText)
              }
              return response.json()
            })
            .catch(error => {
              Swal.showValidationMessage(
                `Request failed: ${error}`
              )
            })
        },
        allowOutsideClick: () => !Swal.isLoading()
      }).then((result) => {
        if (result.dismiss != "backdrop") {
             Swal.fire({
            title: 'Ocupación guardada correctamente',
          })
          var datos = "";
            $.each(result.value.ocupaciones, function(index, val) {
              datos+= '<option value="'+val.id+'">'+val.nombre+'</option>';
            });
            $("#ocupacion_select").html(datos);
        }
         
      })
  });
</script>
@endsection