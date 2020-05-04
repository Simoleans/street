<!DOCTYPE html>
<html lang="en">
	@include('layouts.header')
	<body data-spy="scroll" data-offset="60" data-target=".nav__holder" id="home" itemscope itemtype="http://schema.org/WebPage">

	@include('layouts.menu')
	

	<main class="main-wrap">
		<div class="content-wrap">
			
			<!-- Service Boxes -->
			<section id="convocatoria" class="pb-72">
				<div class="container">
					
					
					<div class="row">
						@yield('content')
					</div>
					<!-- <div class="row">
						<div class="col-lg-5">
							<div class="title-row animate">
								<div class="animate-container">
									<h3 class="section-subtitle section-subtitle--line">Our Services</h3>
									<h2 class="section-title">Digital Objectives</h2>
									<p class="section-description">Creative solutions with
									a strategic focus. We grow brands, create experiences and solve business problems.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6 offset-lg-1">
							<div class="animate">
								<div class="animate-container">
									<div class="row">
										<div class="col-lg-6">							
											<div class="service">
												<i class="service__icon o-edit-window-1"></i>
												<h4 class="service__title">UX Design</h4>
												<p class="service__text">We also provide tangible results and measurable long-term value business.</p>
											</div>								
										</div>
										<div class="col-lg-6">
											<div class="service">
												<i class="service__icon o-source-code-1"></i>
												<h4 class="service__title">Perfect Coding</h4>
												<p class="service__text">We also provide tangible results and measurable long-term value business.</p>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-6">
											<div class="service">
												<i class="service__icon o-call-contact-1"></i>
												<h4 class="service__title">Outstanding Support</h4>
												<p class="service__text">We also provide tangible results and measurable long-term value business.</p>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="service">
												<i class="service__icon o-strategy-1"></i>
												<h4 class="service__title">Marketing Strategy</h4>
												<p class="service__text">We also provide tangible results and measurable long-term value business.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div> -->

				</div>
			</section> <!-- end service boxes -->
		</div> <!-- end content wrap -->

		@include('layouts.footer')

	</main> <!-- end main wrapper -->
	

	@include('layouts.script')
	@include('layouts.sweetalert')
		
</body>
</html>