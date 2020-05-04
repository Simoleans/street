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
<div class="col-lg-12" id="convocatoria">
  <div class="title-row animate">
    <div class="animate-container">
      <h3 class="section-subtitle section-subtitle--line"> Formulario</h3>
      <h2 class="section-title">Registrar Convocatoria</h2>
      <!-- <p class="section-description">Creative solutions with
      a strategic focus. We grow brands, create experiences and solve business problems.</p> -->
    </div>
  </div>
</div>
<div class="col-md-12">
  <form action="{{route('convocatoria.store')}}" method="POST" enctype="multipart/form-data" id="form_modelo">
  @csrf
  <div class="row">
    <div class="col-md-12">
        <div class="form-group">
          <label for="titulo">Titulo</label>
          <input type="text" id="titulo" class="form-control" name="titulo" required>
        </div>
      </div>
     <div class="col-md-6">
        <div class="form-group">
          <label for="cliente_select">Cliente</label>
          <select class="form-control select-multiple" name="client_id" id="cliente_select" required>
            <option value="">Seleccionar...</option>
           @foreach($clientes as $u)
            <option value="{{ $u->id }}">{{ $u->name }}</option>
           @endforeach
          </select>
          <small><a href="#" id="cliente">Crear Cliente</a></small>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="productora_select">Productora</label>
          <select class="form-control select-multiple" id="productora_select" name="productora_id">
            <option value="">Seleccione...</option>
           @foreach($productoras as $p)
            <option value="{{ $p->id }}">{{ $p->nombre }}</option>
           @endforeach
          </select>
           <small><a href="#" id="productora">Crear Productora</a></small>
        </div>
      </div>
     
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label for="fecha">Fecha Filmación</label>
          <input type="text" id="fecha" class="form-control fe" name="fecha_filmacion" required autocomplete="off">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="fecha_prueba">Fecha Prueba De Vestuario</label>
          <input type="text" id="fecha_prueba" class="form-control fe" name="fecha_prueba" required autocomplete="off">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="fecha_callback">Fecha De Callback</label>
          <input type="text" id="fecha_callback" class="form-control fe" name="fecha_callback" required autocomplete="off">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="fecha_ensayo">Fecha Ensayo</label>
          <input type="text" id="fecha_ensayo" class="form-control fe" name="fecha_ensayo" required autocomplete="off">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="duracion">Duración en meses</label>
          <input type="number" id="duracion" class="form-control" name="duracion" required>
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="medios_select">Medio</label>
          <select class="form-control select-multiple" name="medio_id" id="medios_select">
            <option value="">Seleccionar...</option>
            @foreach($medios as $m)
              <option value="{{ $m->id }}">{{ $m->nombre }}</option>
            @endforeach
          </select>
          <small><a href="#" id="medios">Crear Medios</a></small>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="territorio_select">Territorio</label>
          <select class="form-control nacionalidad select-multiple" id="territorio_select" name="territorio_id">
            <option value="">Seleccione...</option>
            @foreach($territorios as $t)
              <option value="{{ $t->id }}">{{ $t->nombre }}</option>
            @endforeach
          </select> 
           <small><a href="#" id="territorio">Crear Territorio</a></small>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="competencia_select">Competencia o Exclusividad</label>
          <select class="form-control select-multiple" name="competencia_id[]" id="competencia_select" multiple="multiple" >
            @foreach($competencias as $c)
              <option value="{{ $c->id }}">{{ $c->nombre }}</option>
            @endforeach
          </select>
            
           <small><a href="#" id="competencia">Crear Competencia</a></small>
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="sexo">Tipo Convocatoria</label>
          <select class="form-control select-multiple" name="tipo" required>
            <option value="">Seleccionar...</option>
            <option value="N">Nacional</option>
            <option value="I">Internacional</option>
          </select>
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
         <label for="producto">Producto</label>
          <input type="text" class="form-control" name="producto" >
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
         <label for="dia_casting">Día del casting</label>
          <input type="text" class="form-control fe" name="dia_casting" >
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
         <label for="presupuesto">Presupuesto</label>
          <input type="number" class="form-control" name="presupuesto" >
        </div>
      </div>
      <div class="col-md-12">
        <div class="form-group">
         <label for="direccion">Dirección</label>
          <input type="text" class="form-control" name="direccion" >
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="region">Región</label>
          <select class="form-control region" name="region_id">
            <option value="">Seleccione...</option>
            @foreach($regiones as $r)
              <option value="{{$r->id}}" data-id="{{$r->id}}">{{$r->region}}</option>
            @endforeach   
          </select> 
        </div>
      </div>
       <div class="col-md-6">
        <div class="form-group">
          <label for="comuna">Comuna</label>
          <select class="form-control comunas" name="comuna_id" ></select>
        </div>
      </div> 
      
    <section>
      <div class="row" id="print_papel">
        
        
      </div>
    </section>

      
       <div class="col-md-12 float-right">
      <input type="button" class="btn btn--lg btn--dark" data-toggle="modal" data-target="#papel-modal" value="Nuevo Rol">
    </div>

    <div class="col-md-12 float-right">
      <input type="submit" class="btn btn--lg btn--color" value="Crear Convocatoria">
    </div>
  </div> <!-- fin row -->
  
</form>
</div>

@endsection

@section('script')

<!-- Contact Form -->
<div class="modal fade login-modal" id="papel-modal" role="dialog" aria-label="Contact Form Modal" aria-hidden="true">
  <div class="modal-dialog contact-form-modal__dialog" role="document">
    <div class="modal-content contact-form-modal__content">
      <button type="button" class="close contact-form-modal__close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">×</span>
      </button>
      <div class="modal-body contact-form-modal__body">
        <div class="title-row animate">
          <div class="animate-container">
            <!-- <h3 class="section-subtitle section-subtitle--line">¡Entra!</h3> -->
            <h2 class="section-title">Nuevo Rol</h2>
          </div>
        </div>
        <form id="papel-form" class="contact-form" action="{{route('auth')}}" method="POST">
        
          <div class="row row-16">
            <div class="col-lg-6">
              <div class="form-group">
                <label for="nombre_rol">Nombre Rol<abbr>*</abbr></label>
                <input type="text" name="nombre_rol" id="nombre_rol" required="" placeholder="Nombre">
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label for="descripcion_rol">Descripción general del rol<abbr>*</abbr></label>
                <input type="text" name="descripcion_rol" id="descripcion_rol" required=""placeholder="Descripcion"> 
              </div>
            </div>
          </div>
          <div class="row row-16">
            <div class="col-md-6">
              <div class="form-group">
                <label for="desde">Edad (Desde)<abbr>*</abbr></label><br>
                <select class="form-control " name="edad_desde" id="edad_desde">
                  <option value="">Seleccione...</option>
                  @for ($i = 1; $i < 100; $i++)
                    <option value="{{ $i }}">{{ $i }}</option>
                  @endfor
                </select>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="hasta">Edad (Hasta)<abbr>*</abbr></label><br>
                <select class="form-control " name="edad_hasta" required="" id="edad_hasta">
                  <option value="">Seleccione...</option>
                  @for ($i = 1; $i < 100; $i++)
                    <option value="{{ $i }}">{{ $i }}</option>
                  @endfor
                </select>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="sexo">Sexo<abbr>*</abbr></label><br>
                <select class="form-control " name="sexo"required id="sexo">
                  <option value="">Seleccione...</option>
                  <option value="F">Femenino</option>
                  <option value="M">Masculino</option>
                </select>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="presupuesto_papel">Presupuesto<abbr>*</abbr></label><br>
                
                <input type="number" class="form-control" name="presupuesto_papel" id="presupuesto_papel">
              </div>
            </div>
          </div>
          <div class="text-center">
            <input type="submit" class="btn btn--lg btn--color" value="Guardar">
          </div>
          <div id="contact-form__message" class="contact-form__message" role="alert"></div>
        </form>
      </div>
    </div>
  </div>
</div> <!-- end contact form -->
<script type="text/javascript" src="{{asset('js/fileinput.js')}}"></script>
<script src="{{asset('js/sweetalert2@8.js')}}"></script>
<script type="text/javascript">
  $(document).ready(function() {



//JS de crear papel

$("#papel-form").submit(function(event) {
  event.preventDefault();
  var arrayForm = $(this).serializeArray();
  var values = {};
  $.each(arrayForm, function (i, field) {
      values[field.name] = field.value;
  });

  var html = '<div class="col-md-12 remove card">'+
                  '<input type="text" class="form-control" name="nombre_rol[]" readonly="" value="'+values.nombre_rol+'">'+
                  '<input type="text" class="form-control" name="descripcion_rol[]" readonly="" value="'+values.descripcion_rol+'">'+
                  '<input type="text" class="form-control" name="edad_desde[]" readonly="" value="'+values.edad_desde+'">'+
                  '<input type="text" class="form-control" name="edad_hasta[]" readonly="" value="'+values.edad_hasta+'">'+
                  '<input type="text" class="form-control" name="sexo[]" readonly="" value="'+values.sexo+'">'+
                  '<input type="number" class="form-control" name="presupuesto_papel[]" readonly="" value="'+values.presupuesto_papel+'">'+
                  // '<input type="button" class="btn btn--lg btn--dark" value="Eliminar">'+
                  '<a href="javascript:void(0);" class="btn btn--lg btn--dark remove_button" title="Remove field">X</a><hr>'+
                '</div>';

  $("#print_papel").append(html);
  $("#papel-modal").modal('hide');
  $(this)[0].reset();

  $(".remove_button").click(function(event) {
    parent = $(this).closest('.remove');
    console.log(parent)
    parent.remove();
  });

  
});

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

  $("#cliente").click(function(event) {
      Swal.fire({
        title: 'Crear Cliente',
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off',
          id: 'cliente_value'
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
          var data = {_token: '{{csrf_token()}}',name: $("#cliente_value").val()};
          return fetch('{{route("cliente.store")}}',{
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
            title: 'Cliente guardado correctamente',
          })
          var datos = "";
            $.each(result.value.clientes, function(index, val) {
              datos+= '<option value="'+val.id+'">'+val.name+'</option>';
            });
            $("#cliente_select").html(datos);
        }
         
      })
  });


  $("#medios").click(function(event) {
      Swal.fire({
        title: 'Crear Medio',
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off',
          id: 'medios_value'
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
          var data = {_token: '{{csrf_token()}}',nombre: $("#medios_value").val()};
          return fetch('{{route("medios.store")}}',{
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
            title: 'Medio guardado correctamente',
          })
          var datos = "";
            $.each(result.value.medios, function(index, val) {
              datos+= '<option value="'+val.id+'">'+val.nombre+'</option>';
            });
            $("#medios_select").html(datos);
        }
         
      })
  });

  $("#territorio").click(function(event) {
      Swal.fire({
        title: 'Crear Territorio',
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off',
          id: 'territorio_value'
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
          var data = {_token: '{{csrf_token()}}',nombre: $("#territorio_value").val()};
          return fetch('{{route("territorio.store")}}',{
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
            title: 'Territorio guardado correctamente',
          })
          var datos = "";
            $.each(result.value.territorios, function(index, val) {
              datos+= '<option value="'+val.id+'">'+val.nombre+'</option>';
            });
            $("#territorio_select").html(datos);
        }
         
      })
  });

  

  

  $("#productora").click(function(event) {
      Swal.fire({
        title: 'Crear Productora',
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off',
          id: 'productora_value'
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
          var data = {_token: '{{csrf_token()}}',nombre: $("#productora_value").val()};
          return fetch('{{route("productora.store")}}',{
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
            title: 'Productora guardado correctamente',
          })
          var datos = "";
            $.each(result.value.productoras, function(index, val) {
              datos+= '<option value="'+val.id+'">'+val.nombre+'</option>';
            });
            $("#productora_select").html(datos);
        }
         
      })
  });

  $("#competencia").click(function(event) {
      Swal.fire({
        title: 'Crear Competencia',
        input: 'text',
        inputAttributes: {
          autocapitalize: 'off',
          id: 'competencia_value'
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
          var data = {_token: '{{csrf_token()}}',nombre: $("#competencia_value").val()};
          return fetch('{{route("competencia.store")}}',{
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
            title: 'Competencia guardado correctamente',
          })
          var datos = "";
            $.each(result.value.competencias, function(index, val) {
              datos+= '<option value="'+val.id+'">'+val.nombre+'</option>';
            });
            $("#competencia_select").html(datos);
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