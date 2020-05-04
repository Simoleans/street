@extends('layouts.blank')


@section('content')

<div class="col-md-12">
  <div class="title-row">
    <h3 class="section-subtitle section-subtitle--line">Convocatorias</h3>
    <h2 class="section-title">Lista De Convocatorias</h2>
  </div>
</div>
</div>

<div class="row">
  @foreach($convocatorias as $m)
  <div class="col-lg-4">
    <div class="animate">
      <div class="animate-container">
        <div class="team">
         
          <h4 class="team__name"><a href="{{ route('convocatoria.show',['convocatorium' => $m->id]) }}">{{ strtoupper($m->titulo) }}</a></h4>
          <span class="team__position">{{ $m->fecha }}</span>
          
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


@endsection

