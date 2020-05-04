<!-- jQuery Scripts -->
	<script src="{{ asset('js/jquery.min.js') }}"></script>
	<script src="{{ asset('js/scripts.min.js') }}"></script>

	<!-- Revolution Slider Addons -->

	<!-- DISTORTION ADD-ON FILES -->
	<link rel='stylesheet' href="{{ asset('revolution-addons/distortion/css/distortion.css') }}" type='text/css' media='all' />
	<script type='text/javascript' src="{{ asset('revolution-addons/distortion/js/pixi.min.js') }}"></script>
	<script type='text/javascript' src="{{ asset('revolution-addons/distortion/js/revolution.addon.distortion.min.js') }}"></script>


	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.video.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.carousel.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.slideanims.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.actions.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.layeranimation.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.kenburn.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.navigation.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.migration.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('revolution/js/extensions/revolution.extension.parallax.min.js') }}"></script>
    <script type="text/javascript" src="{{asset('js/select2.min.js')}}"></script>
	<script type="text/javascript" src="{{asset('js/validaciones.js')}}"></script>
	<script src="{{ asset('js/jquery-ui.js') }}"></script>


	<script src="{{asset('js/datatable/datatables.min.js')}}" type="text/javascript"></script>
	<script type="text/javascript">
         $(document).ready(function() {
            $('.select-multiple').select2();
         });
		 $(".dataTable").DataTable({
          language: {
            url:'{{asset("js/datatable/spanish.json")}}',
          }
        });

		  // datapicker español
        $.datepicker.regional['es'] = {
         closeText: 'Cerrar',
         prevText: '< Ant',
         nextText: 'Sig >',
         currentText: 'Hoy',
         monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
         monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
         dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
         dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
         dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
         weekHeader: 'Sm',
         dateFormat: 'dd/mm/yy',
         firstDay: 1,
         isRTL: false,
         showMonthAfterYear: true,
         yearSuffix: ''
         };
         $.datepicker.setDefaults($.datepicker.regional['es']);

        $(function () {

          $(".fe").datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd-mm-yy',
            yearRange: "-100:+0",
          });
        });


        $(".nacionalidad").change(function(event) {
         //$(".region").attr('disabled',false);
        // var id = $('option:selected',this).data('id');
        // $.ajax({
        //   url: '{{url("/regiones/")}}/'+id,
        //   type: 'GET',
        //   dataType: 'json',
        // })
        // .done(function(data) {
        //    var datos = '';
        //   $.each(data.nacionalidad, function(index, val) {
        //      //console.log(val.comuna);
        //      datos+= '<option value="'+val.region+'" data-id="'+val.id+'">'+val.region+'</option>';
        //   });
        //   if (id == 39) {
        //     $(".region").attr('disabled',false);
        //   }
          
        //   $(".region").html(datos);
        
        // })
        // .fail(function() {
        //   console.log("error");
        // })
        // .always(function() {
        //   console.log("complete");
        // });
        
        
      });

      $(".region").change(function(event) {
        event.preventDefault();
        var id = $('option:selected',this).data('id');
        
        //alert($(this).text());
        $.ajax({
          url: '{{url("/comunas")}}/'+id,
          type: 'GET',
          dataType: 'json',
        })
        .done(function(data) {
          var datos = '';
          $.each(data, function(index, val) {
             //console.log(val.comuna);
             datos+= '<option value="'+val.id+'">'+val.comuna+'</option>';
          });
          $(".comunas").attr('disabled',false).html(datos);
        })
        .fail(function() {
          console.log("error");
        })
        .always(function() {
          console.log("complete");
        });
        
      });

      $(".delete").click(function(event) {
      Swal.fire({
      title: '¿Estas seguro?',
      // text: "You won't be able to revert this!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Si, Eliminar'
      }).then((result) => {
        if (result.value) {
          $.ajax({
            url: $(this).data('url-destroy'),
            type: 'DELETE',
            dataType: 'JSON',
            data: {_token: '{{csrf_token()}}'},
          })
          .done(function(data) {
            location.reload();
          })
          .fail(function() {
            console.log("error");
          })
          .always(function() {
            console.log("complete");
          });
          
        }
      })
  });

	</script>
	@yield('script')
