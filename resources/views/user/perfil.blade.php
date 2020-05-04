@extends('layouts.app')

@section('content')

<style>
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
<!--About section starts-->
<section id="about">
  <div class="row">
    <div class="col-12">
      <div class="content-header">Información de {{Auth::user()->nombre}}</div>

    </div>
  </div>
  <div class="row">
    <div class="col-sm-12">
      <div class="card">
        <div class="card-content">
          <div class="card-body">
            <a href="{{route('user.show',['id'=>Auth::user()->id])}}" class="btn btn-raised btn-primary">
                <i class="ft-arrow-left"></i> Volver
            </a>
            <!-- @if($perfil->etiqueta == 2)
            <button type="button" class="btn btn-raised btn-warning" data-toggle="modal"
              data-target="#warning">
              <i class="ft-credit-card"></i> Pagar
            </button>
            @endif -->
            <hr>
           <form method="POST" action="{{route('metaUser.store')}}" enctype="multipart/form-data">
           @csrf
            <div class="row">
              <div class="col-sm-4 text-center">
                  <div class="kv-avatar">
                      <div class="file-loading">
                          <input id="avatar-2" name="avatar" type="file">
                      </div>
                  </div>
                 <!--  <div class="kv-avatar-hint">
                      <small>Select file < 1500 KB</small>
                  </div> -->
              </div>
              <div class="col-sm-8">
                  <div class="row">
                    @if($existeMeta)
                      <input id="-2" name="avatar" type="hidden" value="{{$avatar->meta_value}}" required>
                      @foreach($meta as $m)
                      <div class="col-sm-6">
                          <div class="form-group">
                              <label for="telefono">{{strtoupper($m->meta_key)}}<span class="kv-reqd">*</span></label>
                              <input type="text" class="form-control" name="telefono" value="{{$m->meta_value}}" required>
                          </div>
                      </div>
                      @endforeach
                    @else
                      <div class="col-sm-6">
                          <div class="form-group">
                              <label for="telefono">Telefono<span class="kv-reqd">*</span></label>
                              <input type="text" class="form-control" name="telefono" required>
                          </div>
                      </div>
                      <div class="col-sm-6">
                          <div class="form-group">
                              <label for="direccion">Direccion<span class="kv-reqd">*</span></label>
                              <input type="text" class="form-control" name="direccion" required>
                          </div>
                      </div>
                 
               
                      <div class="col-sm-6">
                          <div class="form-group">
                              <label for="estatura">Estatura<span class="kv-reqd">*</span></label>
                              <input type="text" class="form-control" name="estatura" required>
                          </div>
                      </div>
                      <div class="col-sm-6">
                          <div class="form-group">
                              <label for="cabello">Color Cabello<span class="kv-reqd">*</span></label>
                              <input type="text" class="form-control" name="cabello" required>
                          </div>
                      </div>
                    @endif
                  </div>
                  <div class="form-group">
                    <hr>
                    <div class="text-right">
                        <button type="submit" class="btn btn-primary">Registrar</button>
                    </div>
                  </div>
              </div>
          </div>
        </form>
            <hr>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--About section ends-->
@endsection

@section('script')

<script>
// var btnCust = '<button type="button" class="btn btn-secondary" title="Add picture tags" ' + 
//     'onclick="alert(\'Call your custom code here.\')">' +
//     '<i class="glyphicon glyphicon-tag"></i>' +
//     '</button>'; 
<?php  if($existeMeta){ $avatar = "avatar/".getUserMeta($perfil->id,'estatura'); }else{ $avatar = "avatar/avatar.png"; } ?>
$("#avatar-2").fileinput({
    overwriteInitial: true,
    maxFileSize: 9000,
    showClose: false,
    showCaption: false,
    showBrowse: false,
    browseOnZoneClick: true,
    removeLabel: '',
    removeIcon: '<i class="ft-x-square"></i>',
    removeTitle: 'Cancelar',
    elErrorContainer: '#kv-avatar-errors-2',
    msgErrorClass: 'alert alert-block alert-danger',
    defaultPreviewContent: '<img src="{{asset($avatar)}}" class="img-thumbnail" alt="Your Avatar"><h6 class="text-muted">Click para seleccionar</h6>',
    // layoutTemplates: {main2: '{preview} ' +  btnCust + ' {remove} {browse}'},
    allowedFileExtensions: ["jpg", "png", "gif","jpeg"]
});


</script>

@endsection