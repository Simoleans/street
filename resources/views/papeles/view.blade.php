@extends('layouts.blank')


@section('content')


<style type="text/css">
  p {
    font-size: 1.5em; 
  }
</style>

<div class="col-md-12">
  <div class="title-row">
    <h3 class="section-subtitle section-subtitle--line">{{ $papel->created_at->format('Y-m-d') }}</h3>
    <h2 class="section-title">{{ strtoupper($papel->nombre_rol) }}</h2>
  </div>
</div>
</div>

<div class="row">
   <div class="col-lg-6">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
          <p>Convocatoria: <strong>{{ strtoupper($papel->convocatoria->titulo) }}</strong></p>
          <p>Nombre Del Rol: <strong>{{ $papel->nombre_rol }}</strong></p>
          <p>Descripción Del Rol: <strong>{{ $papel->descripcion_rol }}</strong></p>
          <p>Sexo: <strong>{{ $papel->sexo == 'F' ? 'Femenino' : 'Masculino' }}</strong></p>
          <p>Edades entre: <strong>{{ $papel->edad_desde.' - '.$papel->edad_hasta }}</strong></p>
          <p>Estatus: <strong>{{ $papel->status == 1 ? 'Activa' : 'No Disponible'  }}</strong></p>
        </div>  
      </div>
    </div>          
  </div> 
</div>
<div class="row">
  <div class="col-md-12">
    <div class="title-row">
      <h2 class="section-subtitle section-subtitle--line"></h2>
      <h2 class="section-title">Modelos Seleccionados</h2>
    </div>
  </div>
  {{-- {{ dd($papel->convocatoriaUser) }} --}}
  @forelse($papel->convocatoriaUser as $m)
 
    <div class="col-lg-4">
      <div class="animate">
        <div class="animate-container">
          <div class="team">
            <img src="{{ image($m->modelo->foto->path) }}" alt="team 1" class="team__img">
            <h4 class="team__name"><a href="{{ route('user.show',['user' => $m->modelo->id]) }}">{{ strtoupper($m->modelo->name.' '.$m->modelo->lastname) }}</a></h4>
            <span class="team__position">{{ $m->modelo->description() }}
              <a  href="#" data-nombre="{{ strtoupper($m->modelo->name.' '.$m->modelo->lastname) }}" data-url-update="{{ route('convouser.update',['convouser' => $m->id]) }}" data-id="{{ $m->id }}" class="rechazar_modelo" data-toggle="modal" data-target="#exampleModal">Rechazar</a></span>
          </div>  
        </div>
      </div>          
    </div> 
  @empty
    <div class="col-lg-12">
      <h3>No se encontraron modelos con las caracteristicas para {{ strtoupper($papel->nombre_rol) }}</h3>
    </div>
  @endforelse
</div>
@endsection
@section('script')
<!-- Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Rechazar a <span id="nombre_modelo"></span></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="form_edit" method="post">
          @csrf
          @method('PUT')
         <h3>¿Desea rechazar a esta persona?</h3>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn--lg btn--color" data-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn--lg btn--color">Aceptar</button>
      </div>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript">
  $(".rechazar_modelo").click(function(event) {
    event.preventDefault();
    var url_update = $(this).data('url-update');
    $("#editModal").modal('show');
    $("#nombre_modelo").text($(this).data('nombre'));
    $("#form_edit").attr('action',url_update);
    // var url = $(this).data('url');
    // var url_update = $(this).data('url-update');
    // var id = $(this).data('id');
    // $.ajax({
    //   url: url,
    //   type: 'POST',
    //   dataType: 'json',
    //   data: {_token: '{{csrf_token()}}'},
    // })
    // .done(function(data) {
    //   $("#form_edit").attr('action',url_update);
    //   $("#editModal").modal('show');
    //   console.log(data)
    //   $("#ocio_nombre").val(data.ocio);
    // })
    // .fail(function() {
    //   console.log("error");
    // })
    // .always(function() {
    //   console.log("complete");
    // });
    
    
  });
</script>
@endsection

