<!DOCTYPE html>
<html lang="en">
	@include('layouts.header')
	<body data-spy="scroll" data-offset="60" data-target=".nav__holder" id="home" itemscope itemtype="http://schema.org/WebPage">

	
	@include('layouts.menu')

	<main class="main-wrap">
		<div class="content-wrap">

			@include('layouts.slider')

			<!-- Intro -->
			<section id="intro" class="intro bg-dark bg-pattern angle angle--top angle--dark">	
				<div class="container">
					<div class="animate">
						<div class="animate-container">    
							<p class="intro__text text-center">A creative and
							digital agency that specialises in branded services, digital experiences and campaigns. Our team hand picked to provide the right balance of skills to work.</p>
						</div>
					</div>
				</div>			
			</section> <!-- end intro -->

			
			<!-- <section id="convocatoria" class="pb-72">
				<div class="container" >
					@include('partials.flash')
					<div class="row">
						@auth
							<div class="col-lg-12" id="registrar" >
								<div class="title-row animate">
									<div class="animate-container">
										<h3 class="section-subtitle section-subtitle--line">Formulario</h3>
										<h2 class="section-title">Registrar Modelo</h2>
										<a href="{{ route('user.create') }}#convocatoria" class="btn btn--lg btn--stroke"><span>Registrar</span></a>
									</div>
								</div>
							</div>
							
						@endauth
						@guest
							<div class="col-lg-4" id="login">
								<div class="title-row animate">
									<div class="animate-container">
										<h3 class="section-subtitle section-subtitle--line">¡Entra!</h3>
										<h2 class="section-title">Iniciar Sesión</h2>
									
										<a href="{{route('registrar.public')}}" class="btn btn--lg btn--stroke"><span>Registrarse</span></a>
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<form method="POST"  action="{{route('auth')}}">
									@csrf
									<label for="email">Email</label>
									<input type="email" name="email" class="form-control" required="">
									<label for="password">Contraseña</label>
									<input type="password" name="password" class="form-control" required="">
								
									
	                                 <div class="row">
	                                 	<div class="col-md-4 offset-8">
	                                 		<div class="text-center mt-40">
												
												<button type="submit" class="btn btn--md btn--dark">Entrar</button>
												
											</div> 
	                                 	</div>
	                 
	                                 </div>
                                </form>
							</div>
							
						@endguest
					</div>
					
				</div>
			</section> --> 

			<!-- Results -->
			<!-- <section class="section-results bg-gradient-bottom" style="background-image: url('{{ asset('img/results/results-min.jpg') }}') }})">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3 results-col">
							<div class="results">
								<div class="results__counter">
									<span class="results__number" data-from="0" data-to="1200">1200</span>
								</div>
								<p class="results__text">We also provide tangible results and
								measurable long-term value business.</p>
							</div>
						</div>
						<div class="col-lg-3 results-col">
							<div class="results">
								<div class="results__counter">
									<span class="results__number" data-from="0" data-to="97">97</span>
									<span class="results__suffix">%</span>
								</div>              
								<p class="results__text">Average satisfaction rating received in
								the preivious year.</p>
							</div>
						</div>
						<div class="col-lg-3 results-col">
							<div class="results">
								<div class="results__counter">
									<span class="results__number" data-from="0" data-to="2489">2489</span>
								</div>
								<p class="results__text">We bring inspiring customer
								satisfaction.</p>
							</div>
						</div>
						<div class="col-lg-3 results-col">
							<div class="results">
								<div class="results__counter">
									<span class="results__number" data-from="0" data-to="132">132</span>
									<span class="results__suffix">K</span>
								</div>
								<p class="results__text">App installs from the two major mobile
								app stores.</p>
							</div>
						</div>
					</div>
				</div>
			</section> --> <!-- end results -->    

			<!-- About -->
			<section class="section-about pb-72 bg-light" id="about">
				<div class="about">        
					<div class="about__holder">
				
						<figure class="about__img-holder">
							<div class="animate">
								<div class="animate-container"> 
									<img src="{{ asset('img/about/about-min.jpg') }}"  }})lt="about us">
									<a href="https://www.youtube.com/watch?v=2GdzNhSB6-0" class="play-btn icon-wave single-video-lightbox mfp-iframe" data-effect="mfp-zoom-in">
									</a>
								</div>
							</div>
						</figure>
							
						<div class="about__info">
							<div class="animate">
								<div class="animate-container"> 
									<div class="title-row mb-40">
										<h3 class="section-subtitle section-subtitle--line">About</h3>
										<h2 class="section-title">Award-Winning
										Business Startup</h2>
										<p class="section-description">We want to tell your brand’s story with
										quality content that will help you inspire.</p>
									</div>

									<!-- Accordion -->
									<div id="accordion-1">

										<div class="accordion">
											<div class="accordion__panel">
												<div class="accordion__heading" id="heading-1">
													<a data-toggle="collapse" href="#collapse-1" class="accordion__link accordion--is-open" aria-expanded="true" aria-controls="collapse-1">
														<span class="accordion__toggle"></span>
														<h4 class="accordion__title">Who we are</h4>                        
													</a>
												</div>
												<div id="collapse-1" class="collapse show" data-parent="#accordion-1" role="tabpanel" aria-labelledby="heading-1">
													<div class="accordion__body">
														<p>
															We are passionate about creating and delivering high quality work, meeting the business needs of nuestros clientes and ensuring the very best user experience for their customers.
														</p>
													</div>
												</div>
											</div>
										</div>

										<div class="accordion">
											<div class="accordion__panel">
												<div class="accordion__heading" id="heading-2">
													<a data-toggle="collapse" href="#collapse-2" class="accordion__link" aria-expanded="true" aria-controls="collapse-2">                        
														<span class="accordion__toggle"></span>
														<h4 class="accordion__title">Our philosophy</h4>
													</a>
												</div>
												<div id="collapse-2" class="collapse" data-parent="#accordion-1" role="tabpanel" aria-labelledby="heading-2">
													<div class="accordion__body">
														<p>
															We are passionate about creating and delivering high quality work, meeting the business needs of nuestros clientes and ensuring the very best user experience for their customers.
														</p>
													</div>
												</div>
											</div>
										</div>

										<div class="accordion">
											<div class="accordion__panel">
												<div class="accordion__heading" id="heading-3">
													<a data-toggle="collapse" href="#collapse-3" class="accordion__link" aria-expanded="true" aria-controls="collapse-3">                        
														<span class="accordion__toggle"></span>
														<h4 class="accordion__title">How we work</h4>
													</a>
												</div>
												<div id="collapse-3" class="collapse" data-parent="#accordion-1" role="tabpanel" aria-labelledby="heading-3">
													<div class="accordion__body">
														<p>
															We are passionate about creating and delivering high quality work, meeting the business needs of nuestros clientes and ensuring the very best user experience for their customers.
														</p>
													</div>
												</div>
											</div>
										</div>

									</div> <!-- end accordion -->

								</div>
							</div>
						</div> <!-- end about__info -->  

					</div>
				</div>
			</section> <!-- end about -->

			<!-- Works -->
			<section class="section-works bg-light pt-72" id="reel">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-6" >
							<div class="title-row text-center">
								<h2 class="section-title">ShowReel</h2>
								<p class="section-description">Design is so simple and relevant works. That's
								why it's so complicated.</p>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Project Slider -->
				<div class="projects-slider">
					<!-- <div class="flickity-slide">
						<figure class="about__img-holder">
							<div class="animate">
								<div class="animate-container"> 
									<img src="{{ asset('img/about/about-min.jpg') }}"  }})lt="about us">
									<a href="https://www.youtube.com/watch?v=2GdzNhSB6-0" class="play-btn icon-wave single-video-lightbox mfp-iframe" data-effect="mfp-zoom-in">
									</a>
								</div>
							</div>
						</figure>
					</div> -->
					<div class="flickity-slide">
						<article class="project project-slide hover-shrink">
							<div class="animate">
								<div class="animate-container"> 
									<img src="{{ asset('img/about/about-min.jpg') }}"  }})lt="about us">
									<a href="https://www.youtube.com/watch?v=2GdzNhSB6-0" class="play-btn icon-wave single-video-lightbox mfp-iframe" data-effect="mfp-zoom-in">
									</a>
								</div>
							</div>
						</article>
					</div>
					<div class="flickity-slide">
						<article class="project project-slide hover-shrink">
							<div class="animate">
								<div class="animate-container"> 
									<img src="{{ asset('img/about/about-min.jpg') }}"  }})lt="about us">
									<a href="https://www.youtube.com/watch?v=2GdzNhSB6-0" class="play-btn icon-wave single-video-lightbox mfp-iframe" data-effect="mfp-zoom-in">
									</a>
								</div>
							</div>
						</article>
					</div>
					<div class="flickity-slide">
						<article class="project project-slide hover-shrink">
							<div class="animate">
								<div class="animate-container"> 
									<img src="{{ asset('img/about/about-min.jpg') }}"  }})lt="about us">
									<a href="https://www.youtube.com/watch?v=2GdzNhSB6-0" class="play-btn icon-wave single-video-lightbox mfp-iframe" data-effect="mfp-zoom-in">
									</a>
								</div>
							</div>
						</article>
					</div>
					<div class="flickity-slide">
						<article class="project project-slide hover-shrink">
							<div class="animate">
								<div class="animate-container"> 
									<img src="{{ asset('img/about/about-min.jpg') }}"  }})lt="about us">
									<a href="https://www.youtube.com/watch?v=2GdzNhSB6-0" class="play-btn icon-wave single-video-lightbox mfp-iframe" data-effect="mfp-zoom-in">
									</a>
								</div>
							</div>
						</article>
					</div>
					<div class="flickity-slide">
						<article class="project project-slide hover-shrink">
							<div class="animate">
								<div class="animate-container"> 
									<img src="{{ asset('img/about/about-min.jpg') }}"  }})lt="about us">
									<a href="https://www.youtube.com/watch?v=2GdzNhSB6-0" class="play-btn icon-wave single-video-lightbox mfp-iframe" data-effect="mfp-zoom-in">
									</a>
								</div>
							</div>
						</article>
					</div>
					<!-- <div class="flickity-slide">
						<article class="project project-slide hover-shrink">
							<a href="single-project.html" class="project__url">
								<figure class="project__img-holder hover-shrink--shrink">
									<img src="{{ asset('img/works/project_slide_3.jpg') }}"  }})lass="project__img hover-shrink--zoom" alt="project 3">
								</figure>
							</a>
							<div class="project__description-wrap">
								<div class="project__description">
									<h3 class="project__title"><a href="single-project.html">Bicycle Concept Design</a></h3>
									<span class="project__category">Product Design</span>
								</div>
							</div>
						</article>
					</div>
					<div class="flickity-slide">
						<article class="project project-slide hover-shrink">
							<a href="single-project.html" class="project__url">
								<figure class="project__img-holder hover-shrink--shrink">
									<img src="{{ asset('img/works/project_slide_4.jpg') }}"  }})lass="project__img hover-shrink--zoom" alt="project 4">
								</figure>
							</a>
							<div class="project__description-wrap">
								<div class="project__description">
									<h3 class="project__title"><a href="single-project.html">Bath Accessories Package</a></h3>
									<span class="project__category">Branding</span>
								</div>
							</div>
						</article>
					</div>
					<div class="flickity-slide">
						<article class="project project-slide hover-shrink">
							<a href="single-project.html" class="project__url">
								<figure class="project__img-holder hover-shrink--shrink">
									<img src="{{ asset('img/works/project_slide_5.jpg') }}"  }})lass="project__img hover-shrink--zoom" alt="project 5">
								</figure>
							</a>
							<div class="project__description-wrap">
								<div class="project__description">
									<h3 class="project__title"><a href="single-project.html">Handbag Package</a></h3>
									<span class="project__category">Branding</span>
								</div>
							</div>
						</article>
					</div> -->
				</div> <!-- end slick-works-slider -->

				<div class="text-center mt-40">
					<a href="single-project.html" class="btn btn--lg btn--stroke"><span>View Works</span></a>
				</div>      

			</section> <!-- end works -->

			<!-- Team -->
			<!-- <section class="section-team">
				<div class="container">
					<div class="row">
						<div class="col-lg-4">
							<div class="title-row">
								<h3 class="section-subtitle section-subtitle--line">Meet Our Team</h3>
								<h2 class="section-title">A Team Of
								Passionate People</h2>
							</div>
						</div>
						<div class="col-lg-6 offset-lg-2">
							<p class="section-description mt-32">We are passionate about creating and delivering high
							quality work, meeting the business needs of nuestros clientes
							and ensuring the very best user experience.</p>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-4">
							<div class="animate">
								<div class="animate-container">
									<div class="team">
										<img src="{{ asset('img/team/team_1.jpg') }}"  }})lt="team 1" class="team__img">
										<h4 class="team__name">Carl Robertson</h4>
										<span class="team__position">CEO / Founder</span>
										<div class="socials socials--rounded mt-16">
											<a href="#" class="social social-twitter" aria-label="twitter" title="twitter" target="_blank"><i class="ui-twitter"></i></a>
											<a href="#" class="social social-facebook" aria-label="facebook" title="facebook" target="_blank"><i class="ui-facebook"></i></a>
											<a href="#" class="social social-google-plus" aria-label="linkedin" title="linkedin" target="_blank"><i class="ui-linkedin"></i></a>
										</div>
									</div>  
								</div>
							</div>          
						</div>
						<div class="col-lg-4">
							<div class="animate">
								<div class="animate-container">
									<div class="team">
										<img src="{{ asset('img/team/team_2.jpg') }}"  }})lt="team 2" class="team__img">
										<h4 class="team__name">Chloe Kent</h4>
										<span class="team__position">Designer</span>
										<div class="socials socials--rounded mt-16">
											<a href="#" class="social social-twitter" aria-label="twitter" title="twitter" target="_blank"><i class="ui-twitter"></i></a>
											<a href="#" class="social social-facebook" aria-label="facebook" title="facebook" target="_blank"><i class="ui-facebook"></i></a>
											<a href="#" class="social social-google-plus" aria-label="linkedin" title="linkedin" target="_blank"><i class="ui-linkedin"></i></a>
										</div>
									</div>
								</div>  
							</div>         
						</div>
						<div class="col-lg-4">
							<div class="animate">
								<div class="animate-container">
									<div class="team">
										<img src="{{ asset('img/team/team_3.jpg') }}"  }})lt="team 3" class="team__img">
										<h4 class="team__name">Alaina Green</h4>
										<span class="team__position">Project Manager</span>
										<div class="socials socials--rounded mt-16">
											<a href="#" class="social social-twitter" aria-label="twitter" title="twitter" target="_blank"><i class="ui-twitter"></i></a>
											<a href="#" class="social social-facebook" aria-label="facebook" title="facebook" target="_blank"><i class="ui-facebook"></i></a>
											<a href="#" class="social social-google-plus" aria-label="linkedin" title="linkedin" target="_blank"><i class="ui-linkedin"></i></a>
										</div>
									</div>
								</div>
							</div>          
						</div>
					</div>

				</div>
			</section> --> <!-- end team -->

			<!-- Testimonials -->
			<!-- <section class="section-testimonials section-testimonials--large-padding bg-overlay" style="background-image: url('{{ asset('img/testimonials/testimonials-min.jpg') }}') }})">
				<div class="container">

					<div class="row justify-content-center mb-40">
						<div class="col-lg-7">
							<div class="title-row text-center">
								<h2 class="section-title">Here's What Our Customers Say</h2>
							</div>
						</div>
					</div>

					<div class="row row-80">
						<div class="col-lg-6">
							<div class="animate">
								<div class="animate-container">
									<div class="testimonial mb-md-40">
										<img src="{{ asset('img/testimonials/testimonial_1.png') }}" class="testimonial__img" alt="testimonial_1">
										<div class="testimonial__body">
											<p class="testimonial__text">“I’am amazed, I should say thank you so much for
											your awesome template. Design is so good and neat
											every detail has been taken care these team are,
											realy amazing and talented! I will work only with
											Radium agency.”</p>
											<span class="testimonial__name">John Marshal</span>
											<span class="testimonial__company">Entrepreneur</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="animate">
								<div class="animate-container">
									<div class="testimonial">
										<img src="{{ asset('img/testimonials/testimonial_2.png') }}" class="testimonial__img" alt="testimonial_2">
										<div class="testimonial__body">
											<p class="testimonial__text">“I’am amazed, I should say thank you so much for
											your awesome template. Design is so good and neat
											every detail has been taken care these team are,
											realy amazing and talented! I will work only with
											Radium agency.”</p>
											<span class="testimonial__name">Christina Green</span>
											<span class="testimonial__company">Entrepreneur</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</section> --> <!-- end testimonials -->

			<!-- From Blog -->
			<!-- <section class="section-from-blog pb-96 angle angle--top" id="blog">
				<div class="container">

					<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="title-row text-center">
								<h2 class="section-title">Latest Thoughts</h2>
								<p class="section-description">Design is so simple and relevant works.
								why it's so complicated.</p>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-4">
							<div class="animate">
								<div class="animate-container">
									<article class="entry" itemscope itemtype="http://schema.org/Article">
										<div class="entry__header hover-shrink">
											<a href="single-post.html" class="entry__img-url hover-shrink--shrink">
												<img src="{{ asset('img/blog/blog_preview_1.jpg') }}"  }})lass="entry__img hover-shrink--zoom" itemprop="image" alt="">
											</a>
										</div>
										<div class="entry__body">
											<div class="entry__meta">
												<span class="entry__meta-item entry__meta-date" itemprop="datePublished" content="2019-11-13">11/13/2019</span>
												<span class="entry__meta-item entry__meta-category">
													<span>in </span>
													<a href="#" class="entry__meta-category-url">Business</a>
												</span>                  
											</div>                
											<h4 class="entry__title title-underline">
												<a href="single-post.html" itemprop="headline">Business Mistakes to Avoid When Starting a Business</a>
											</h4>
											<div class="entry__meta">
												<span class="entry__meta-item entry__meta-author">
													<span>by</span>
													<a href="#" class="entry__meta-author-url">
														<span class="entry__meta-author-name" itemprop="author">Camille Alforque</span>
													</a>
												</span>
											</div>                 
										</div>
									</article>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="animate">
								<div class="animate-container">
									<article class="entry" itemscope itemtype="http://schema.org/Article">
										<div class="entry__header hover-shrink">
											<a href="single-post.html" class="entry__img-url hover-shrink--shrink">
												<img src="{{ asset('img/blog/blog_preview_2.jpg') }}"  }})lass="entry__img hover-shrink--zoom" itemprop="image" alt="">
											</a>
										</div>
										<div class="entry__body">
											<div class="entry__meta">
												<span class="entry__meta-item entry__meta-date" itemprop="datePublished" content="2019-11-13">11/13/2019</span>
												<span class="entry__meta-item entry__meta-category">
													<span>in </span>
													<a href="#" class="entry__meta-category-url">Innovation</a>
												</span>                  
											</div>                
											<h4 class="entry__title title-underline">
												<a href="single-post.html" itemprop="headline">The Hyper Flexible Seamlessly Connected Modern Working</a>
											</h4>
											<div class="entry__meta">
												<span class="entry__meta-item entry__meta-author">
													<span>by</span>
													<a href="#" class="entry__meta-author-url">
														<span class="entry__meta-author-name" itemprop="author">Camille Alforque</span>
													</a>
												</span>
											</div>                 
										</div>
									</article>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="animate">
								<div class="animate-container">
									<article class="entry" itemscope itemtype="http://schema.org/Article">
										<div class="entry__header hover-shrink">
											<a href="single-post.html" class="entry__img-url hover-shrink--shrink">
												<img src="{{ asset('img/blog/blog_preview_3.jpg') }}"  }})lass="entry__img hover-shrink--zoom" itemprop="image" alt="">
											</a>
										</div>
										<div class="entry__body">
											<div class="entry__meta">
												<span class="entry__meta-item entry__meta-date" itemprop="datePublished" content="2019-11-13">11/13/2019</span>
												<span class="entry__meta-item entry__meta-category">
													<span>in </span>
													<a href="#" class="entry__meta-category-url">Productivity</a>
												</span>                  
											</div>                
											<h4 class="entry__title title-underline">
												<a href="single-post.html" itemprop="headline">Are you a design superstar-in-the-making?</a>
											</h4>
											<div class="entry__meta">
												<span class="entry__meta-item entry__meta-author">
													<span>by</span>
													<a href="#" class="entry__meta-author-url">
														<span class="entry__meta-author-name" itemprop="author">Camille Alforque</span>
													</a>
												</span>
											</div>                 
										</div>
									</article>
								</div>
							</div>
						</div>
					</div>

				</div>
			</section> --> <!-- end from blog -->

		</div> <!-- end content wrap -->

		<!-- Contact Form -->
		<div class="modal fade login-modal" id="login-modal" role="dialog" aria-label="Contact Form Modal" aria-hidden="true">
			<div class="modal-dialog contact-form-modal__dialog" role="document">
				<div class="modal-content contact-form-modal__content">
					
								
							
					<button type="button" class="close contact-form-modal__close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>

					<div class="modal-body contact-form-modal__body">
						<div class="title-row animate">
							<div class="animate-container">
								<!-- <h3 class="section-subtitle section-subtitle--line">¡Entra!</h3> -->
								<h2 class="section-title">Iniciar Sesión</h2>
							</div>
						</div>
						<form id="contact-form" class="contact-form" action="{{route('auth')}}" method="POST">
						
							<div class="row row-16">
								<div class="col-lg-6">
									<div class="form-group">
										<label for="email">Email<abbr>*</abbr></label>
										<input type="text" name="email" id="email" required="" placeholder="Email">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<label for="password">Contraseña<abbr>*</abbr></label>
										<input type="password" name="password" id="password" required=""placeholder="Contraseña"> 
									</div>
								</div>
							</div>
							<div class="text-center">
								<input type="submit" class="btn btn--lg btn--color" value="Entrar">
							</div>
							<div id="contact-form__message" class="contact-form__message" role="alert"></div>
						</form>
					</div>
				</div>
			</div>
		</div> <!-- end contact form -->

		@include('layouts.footer')

	</main> <!-- end main wrapper -->
	

	@include('layouts.script')
	@include('layouts.sweetalert')
		
</body>
</html>