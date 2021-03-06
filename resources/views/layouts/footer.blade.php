<!-- Footer -->
<footer class="footer bg-dark bg-pattern" itemtype="http://schema.org/WPFooter" itemscope>
	<div class="container">
		<div class="footer__widgets">
			<div class="row">

				<div class="col-lg-4 col-md-6">
					<div class="widget widget-about-us">
						<!-- <span class="widget-about-us__text">We’d love to hear from you</span> -->
						<a href="mailto:produccion@streetcastingchile.cl" class="widget-about-us__email">produccion@streetcastingchile.cl</a>
						<a href="tel:021-5395-6573" class="widget-about-us__phone"> +56 9 3228 9663<br> +56 9 3459 4861</a>
						
					</div>
				</div> <!-- end about us -->


				<div class="col-lg-4 col-md-6">
					<div class="widget text-center text-md-left">
						<h3 class="widget-cta__title white mb-32">Registrate Como Modelo</h3>
						<a href="#" class="btn btn--lg btn--stroke contact-form-trigger" data-toggle="modal" data-target="#contact-form-modal">
							<span>Registrarse</span>
						</a>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="widget widget-address">
						<address class="widget-address__address">Santiago, Chile<br>
						</address>
						<div class="socials mt-32">
							
							<a href="https://www.instagram.com/streetcastingchile/?hl=es-la" class="social social-facebook" aria-label="instagram" title="instagram" target="_blank"><i class="ui-instagram"></i></a>
							<a href="https://www.facebook.com/streetcastingchile/" class="social social-facebook" aria-label="facebook" title="facebook" target="_blank"><i class="ui-facebook"></i></a>                  
						</div>
						<!-- <a href="https://www.google.bg/maps/place/1702+Olympic+Blvd,+Santa+Monica,+CA+90404,+USA/data=!4m2!3m1!1s0x80c2bb3056a299ef:0x94f425adda595d69?sa=X&ved=0ahUKEwje-u2zobfPAhXFthQKHXdEBY4Q8gEIGTAA" class="widget-address__url" target="_self">Get Directions</a> -->
					</div>
				</div>           

			</div>
		</div>    
	</div> <!-- end container -->

	<div class="footer__bottom">
		<div class="container">
			<div class="copyright-wrap text-center">
				<span class="copyright">
					 StreetCasting &copy; 2019. Desarrollado por <a href="www.nextstation.cl">NextStation Chile.</a>
				</span>
			</div>            
		</div>
	</div> <!-- end footer bottom -->
</footer> <!-- end footer -->

<div class="footer-placeholder" id="contact"></div>

<!-- Contact Form -->
<div class="modal fade contact-form-modal" id="contact-form-modal" role="dialog" aria-label="Contact Form Modal" aria-hidden="true">
	<div class="modal-dialog contact-form-modal__dialog" role="document">
		<div class="modal-content contact-form-modal__content">

			<button type="button" class="close contact-form-modal__close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">×</span>
			</button>

			<div class="modal-body contact-form-modal__body">
				<form id="contact-form" class="contact-form" action="#">
					<div class="row row-16">
						<div class="col-lg-6">
							<div class="form-group">
								<label for="name">Name<abbr>*</abbr></label>
								<input type="text" name="NAME" id="name" required="">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="form-group">
								<label for="email">Email<abbr>*</abbr></label>
								<input type="email" name="EMAIL" id="email" required="">
							</div>
						</div>
					</div>

					<label for="message">Message<abbr>*</abbr></label>
					<textarea name="MESSAGE" id="message" rows="6"></textarea>              
					<div class="gdpr-checkbox">
						<label class="gdpr-checkbox__label">
							<input class="gdpr-checkbox__input" name="AGREE_TO_TERMS" type="checkbox" value="1" required="">
							<span class="gdpr-checkbox__text">I agree to storage of my email according to <a href="#" target="_blank">Privacy Policy</a>
							</span>
						</label>
					</div>
					<div class="text-center">
						<input id="contact-form__submit" type="submit" class="btn btn--lg btn--color" value="Send Message">
					</div>
					
					<div id="contact-form__message" class="contact-form__message" role="alert"></div>
					
				</form>
			</div>
		</div>
	</div>
</div> <!-- end contact form -->


<div id="back-to-top">
	<a href="#top"><i class="ui-arrow-up"></i></a>
</div>