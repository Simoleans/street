<!-- Preloader -->
<div class="loader-mask">
	<div class="loader">
		"Loading..."
	</div>
</div>  

<!-- Header -->
<header class="nav nav--pattern" itemtype="http://schema.org/WPHeader" itemscope >
	<div class="nav__holder nav--sticky nav--align-center">
		<div class="container-fluid container-semi-fluid">
			<div class="flex-parent">

				<div class="nav__header clearfix">
					<!-- Logo -->
					<div class="logo-wrap local-scroll">
						<a href="{{route('landing')}}" class="logo__url">
							<img class="logo" src="img/logo/logo.png" srcset="img/logo/logo.png 1x, img/logo/logo@2x.png 2x" alt="logo" itemtype="http://schema.org/Organization" itemscope>
						</a>
					</div>

					<button type="button" class="nav__icon-toggle" id="nav__icon-toggle" data-toggle="collapse" data-target="#navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="nav__icon-toggle-bar"></span>
						<span class="nav__icon-toggle-bar"></span>
						<span class="nav__icon-toggle-bar"></span>
					</button>
				</div> <!-- end nav-header -->
				
				<!-- Navbar -->
				<nav id="navbar-collapse" class="nav__wrap collapse navbar-collapse" itemtype="http://schema.org/SiteNavigationElement" itemscope="itemscope">

					<ul class="nav__menu local-scroll" id="onepage-nav">
						<li class="nav__dropdown">
							<!-- <a href="{{route('landing')}}" class="nav-link active" aria-haspopup="true">Home</a> -->
							<!-- <i class="ui-arrow-down nav__dropdown-trigger" role="button" aria-haspopup="true" aria-expanded="false"></i>
							<ul class="nav__dropdown-menu">
								<li>
									<a href="index.html">
										<span class="nav__dropdown-menu-label">Hero Image</span>
									</a>
								</li>
								<li>
									<a href="index-video-bg.html">
										<span class="nav__dropdown-menu-label">HTML Video</span>
									</a>
								</li>
								<li>
									<a href="index-creative.html">
										<span class="nav__dropdown-menu-label">Hero Creative</span>
									</a>
								</li>
								<li>
									<a href="index-youtube-bg.html">
										<span class="nav__dropdown-menu-label">Youtube Video</span>
									</a>
								</li>
								<li>
									<a href="index-vimeo-bg.html">
										<span class="nav__dropdown-menu-label">Vimeo Video</span>
									</a>
								</li>
								<li>
									<a href="index-projects-showcase.html">
										<span class="nav__dropdown-menu-label">Projects Showcase</span>
									</a>
								</li>
							</ul> -->
						</li>
						              
						<li>
							<a href="#reel" class="nav-link">ShowReel</a>
						</li>
					
						<li>
							<a href="#contact" class="nav-link">Contacto</a>
						</li>
						@guest
						<li>
							<a href="#" class="nav-link" data-toggle="modal" data-target="#login-modal">Iniciar Sesión</a>
						</li>
						<li>
							<a href="#registrar" class="nav-link">Registrar</a>
						</li>
						@endguest
						@auth
						
						<li class="nav__dropdown">
							<a href="#" class="nav-link" aria-haspopup="true">Convocatorias</a>
							<i class="ui-arrow-down nav__dropdown-trigger" role="button" aria-haspopup="true" aria-expanded="false"></i>
							<ul class="nav__dropdown-menu">
								<li>
									<a href="{{ route('convocatoria.create') }}">
										<span class="nav__dropdown-menu-label">Crear Convocatoria</span>
									</a>
								</li>
								<li>
									<a href="{{ route('convocatoria.index') }}">
										<span class="nav__dropdown-menu-label">Ver Convocatoría</span>
									</a>
								</li>
								<li>
									<a href="{{ route('productora.index') }}">
										<span class="nav__dropdown-menu-label">Ver Productoras</span>
									</a>
								</li>
								<li>
									<a href="{{ route('medios.index') }}">
										<span class="nav__dropdown-menu-label">Ver Medios</span>
									</a>
								</li>
								<li>
									<a href="{{ route('cliente.index') }}">
										<span class="nav__dropdown-menu-label">Ver Clientes</span>
									</a>
								</li>
								<li>
									<a href="{{ route('territorio.index') }}">
										<span class="nav__dropdown-menu-label">Ver Territorios</span>
									</a>
								</li>
								<li>
									<a href="{{ route('competencia.index') }}">
										<span class="nav__dropdown-menu-label">Ver Competencias</span>
									</a>
								</li>
								<!-- <li>
									<a href="{{ route('user.index') }}">
										<span class="nav__dropdown-menu-label">Ver Modelos</span>
									</a>
								</li> -->
							</ul>
						</li>
						<li class="nav__dropdown">
							<a href="#" class="nav-link" aria-haspopup="true">Modelos</a>
							<i class="ui-arrow-down nav__dropdown-trigger" role="button" aria-haspopup="true" aria-expanded="false"></i>
							<ul class="nav__dropdown-menu">
								<li>
									<a href="{{ route('user.create') }}">
										<span class="nav__dropdown-menu-label">Crear Modelo</span>
									</a>
								</li>
								<li>
									<a href="{{ route('user.index') }}">
										<span class="nav__dropdown-menu-label">Ver Modelos</span>
									</a>
								</li>
								<li>
									<a href="{{ route('ocios.index') }}">
										<span class="nav__dropdown-menu-label">Ocios</span>
									</a>
								</li>
								<li>
									<a href="{{ route('idiomas.index') }}">
										<span class="nav__dropdown-menu-label">Idiomas</span>
									</a>
								</li>
								<li>
									<a href="{{ route('ocupacions.index') }}">
										<span class="nav__dropdown-menu-label">Ocupaciones</span>
									</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="{{ route('user.profile') }}" class="nav-link">Perfil</a>
						</li>
						<li>
							<a href="{{ route('logout') }}" class="nav-link">Salir</a>
						</li>
						@endauth
					</ul> <!-- end menu -->


					<!-- Mobile Socials -->
					<div class="nav__mobile-socials d-lg-none">
						<div class="socials">
							<a href="https://www.facebook.com/streetcastingchile/" class="social social-facebook" aria-label="facebook" title="facebook" target="_blank"><i class="ui-facebook"></i></a>
							<a href="https://www.instagram.com/streetcastingchile/?hl=es-la" class="social social-facebook" aria-label="instagram" title="instagram" target="_blank"><i class="ui-instagram"></i></a>
							>
						</div>
					</div>

				</nav> <!-- end nav-wrap -->

				<!-- Socials -->
				<div class="nav__socials flex-child d-none d-lg-block">
					<div class="socials right">
						<a href="https://www.facebook.com/streetcastingchile/" class="social social-facebook" aria-label="facebook" title="facebook" target="_blank"><i class="ui-facebook"></i></a>
						<a href="https://www.instagram.com/streetcastingchile/?hl=es-la" class="social social-instagram" aria-label="instagram" title="instagram" target="_blank"><i class="ui-instagram"></i></a>
						
					</div>
				</div>

			</div> <!-- end flex-parent -->
		</div> <!-- end container -->

	</div>
</header> <!-- end navigation -->