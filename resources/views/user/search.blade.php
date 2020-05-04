@extends('layouts.blank')


@section('content')


<div class="col-md-4">
  <div class="title-row">
    <h2 class="section-title">Lista De Modelos</h2>
  </div>
</div>

<div class="col-md-8">

    <form id="form_search" method="POST" action="{{ route('search.form.user') }}">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="desde">Edad (Desde)</label>
            <select class="form-control select-multiple" name="edad_desde">
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
            <select class="form-control select-multiple" name="edad_hasta">
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
      <div class="row">
        @foreach($users as $m)
          <div class="col-lg-3">
            <div class="animate">
              <div class="animate-container">
                <div class="team">
                  <img src="{{ image($m->user->foto->path) }}" alt="team 1" class="team__img">
                  <h4 class="team__name"><a href="{{ route('user.show',['user' => $m->user->id]) }}">{{ strtoupper($m->user->name.' '.$m->user->lastname) }}</a></h4>
                  <span class="team__position">{{ $m->user->description() }}</span>
                  <!-- <div class="socials socials--rounded mt-16">
                    <a href="#" class="social social-twitter" aria-label="twitter" title="twitter" target="_blank"><i class="ui-twitter"></i></a>
                    <a href="#" class="social social-facebook" aria-label="facebook" title="facebook" target="_blank"><i class="ui-facebook"></i></a>
                    <a href="#" class="social social-google-plus" aria-label="linkedin" title="linkedin" target="_blank"><i class="ui-linkedin"></i></a>
                  </div> -->
                </div>  
              </div>
            </div>          
          </div> 
         @endforeach 
      </div>
    </div>

 </div>

@endsection



