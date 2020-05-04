@extends('layouts.blank')


@section('content')

<style type="text/css">
  .borderInput {
    border : 1px solid red;
  }
</style>

<div class="col-md-4">
  <div class="title-row">
    <h2 class="section-title">Lista De Modelos</h2>
  </div>
</div>

<div class="col-md-8">
     
    <form id="form_search" method="POST" >
      <small class="text-danger" id="msg_error"></small>
      <div class="row">
        
        <div class="col-md-6">
          <div class="form-group">
            <label for="desde">Edad (Desde)</label>
            <select class="form-control select-multiple" name="edad_desde" id="edad_desde">
              <option value="">Seleccione...</option>
              @for ($i = 1; $i < 100; $i++)
                <option value="{{ $i }}">{{ $i }}</option>
              @endfor
            </select>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="hasta">Edad (Hasta)</label>
            <select class="form-control select-multiple" name="edad_hasta" id="edad_hasta">
              <option value="">Seleccione...</option>
              @for ($i = 1; $i < 100; $i++)
                <option value="{{ $i }}">{{ $i }}</option>
              @endfor
            </select>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="hasta">Genero</label>
            <select class="form-control" name="genero">
              <option value="">Seleccione...</option>
              <option value="M">Masculino</option>
              <option value="F">Femenino</option>
            </select>
          </div>
        </div>
      </div>
      <br>
      <br>
      <div class="row">
        <div class="col-md-7">
          <input type="submit" class="btn btn--md btn--color" value="Buscar">
        </div>
      </div>
    </form> 
  </div>





  
 <div class="row">
    <div class="col-md-12">
      <div class="title-row">
          <h3 class="section-subtitle section-subtitle--line">Modelos</h3>
          <!-- <h2 class="section-title">Lista De Modelos</h2> -->
        </div>
      <div class="row" id="section_model">
        @foreach($users as $m)
          <div class="col-lg-4">
            <div class="animate">
              <div class="animate-container">
                <div class="team">
                  <img src="{{ image($m->foto->path) }}" alt="team 1" class="team__img">
                  <h4 class="team__name"><a href="{{ route('user.show',['user' => $m->id]) }}">{{ strtoupper($m->name.' '.$m->lastname) }}</a></h4>
                  <span class="team__position">{{ $m->description() }}</span>
                </div>  
              </div>
            </div>          
          </div> 
         @endforeach 
      </div>
    </div>

 </div>

@endsection

@section('script')
<script type="text/javascript">
  $("#form_search").submit(function(event) {
    event.preventDefault();

    if ($("#edad_desde").val() < $("#edad_hasta").val()) {

      $("#msg_error").text('Edad (Desde) debe ser MAYOR a Edad (Hasta)');
      return false;
    }
 // $("#msg_error").fadeIn('slow/400/fast');

    $("#msg_error").fadeOut('slow/400/fast');
    $.ajax({
      url: "{{ route('search.form.user') }}",
      type: 'POST',
      dataType: 'JSON',
      data: $(this).serialize(),
    })
    .done(function(data) {

      $("#section_model").empty();
      $("#section_model").html(data);
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



