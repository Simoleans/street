@extends('layouts.blank')


@section('content')

<div class="col-md-12">
  <div class="title-row">
    <h3 class="section-subtitle section-subtitle--line">Clientes</h3>
    <h2 class="section-title">Lista De Clientes</h2>
  </div>
</div>
</div>

<div class="row">
  @foreach($clientes as $m)
  <div class="col-lg-4">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
         
          <h4 class="team__name">{{ strtoupper($m->name) }}</h4>
          <span class="team__position">
            <a  href="#" data-url="{{ route('cliente.search',['cliente' => $m->id]) }}" data-url-update="{{ route('cliente.update',['cliente' => $m->id]) }}" data-id="{{ $m->id }}" class="edit_cliente" data-toggle="modal" data-target="#exampleModal">Editar</a>
            |
            <a  href="#" data-url-destroy="{{ route('cliente.destroy',['cliente' => $m->id]) }}" data-id="{{ $m->id }}" class="delete" data-toggle="modal" data-target="#delete">Eliminar</a>
          </span>
        </div>  
      </div>
    </div>          
  </div> 
  @endforeach          
</div>





@endsection

@section('script')
<!-- Modal -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Editar</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="form_edit" method="post">
          @csrf
          @method('PUT')
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Cliente:</label>
            <input type="text" class="form-control" id="cliente_name" required name="name">
          </div>
         
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn--lg btn--color" data-dismiss="modal">Cerrar</button>
        <button type="submit" class="btn btn--lg btn--color">Editar</button>
      </div>
      </form>
    </div>
  </div>
</div>

<script type="text/javascript">
  $(".edit_cliente").click(function(event) {
    event.preventDefault();
    var url = $(this).data('url');
    var url_update = $(this).data('url-update');
    var id = $(this).data('id');
    $.ajax({
      url: url,
      type: 'POST',
      dataType: 'json',
      data: {_token: '{{csrf_token()}}'},
    })
    .done(function(data) {
      $("#form_edit").attr('action',url_update);
      $("#editModal").modal('show');
      console.log(data)
      $("#cliente_name").val(data.name);
    })
    .fail(function() {
      console.log("error");
    })
    .always(function() {
      console.log("complete");
    });
    
  });
</script>
@endsection

