<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div role="main" class="main">
	<section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-7" style="background-image: url(img/page-header/page-header-background-transparent-2.jpg);">
		<div class="container">
			<div class="row mt-5">
				<div class="col-md-12 align-self-center p-static order-2 text-center">
					<h1 class="text-12 font-weight-semibold">For Love</h1>
				</div>
				<div class="col-md-12 align-self-center order-1">
					<ul class="breadcrumb breadcrumb-light d-block text-center">
						<li><a href="#">Home</a></li>
						<li class="active">Pages</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<div class="container py-4">
		<!--  남자     -->
		<c:forEach items="${coupleInfo }" var = "ci">
			<c:if test="${ci.user_gender eq '남자' }">
				<div class="row">
					<div class="col-md-7 order-2">
						<div class="overflow-hidden">
							<h2 class="text-color-dark font-weight-bold text-8 mb-0 pt-0 mt-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="300">${ci.user_name }</h2>
						</div>
						<div class="overflow-hidden mb-3">
							<p class="font-weight-bold text-primary text-uppercase mb-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="500">${ci.user_age }살</p>
						</div>
						<p class="lead appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="700">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam <a href="#">vehicula</a> sit amet enim ac sagittis. Curabitur eget leo varius, elementum mauris eget, egestas quam. Donec ante risus, dapibus sed lectus non, lacinia vestibulum nisi. Morbi vitae augue quam. Nullam ac laoreet libero.</p>
						<p class="pb-3 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800">Consectetur adipiscing elit. Aliquam iaculis sit amet enim ac sagittis. Curabitur eget leo varius, elementum mauris eget, egestas quam.</p>
						<hr class="solid my-4 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="900">
						<div class="row align-items-center appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1000">
							<div class="col-lg-6">
<!-- 								<a href="#" class="btn btn-modern btn-dark mt-3">Get In Touch</a> -->
<!-- 								<a href="#" class="btn btn-modern btn-primary mt-3">Hire Me</a> -->
							</div>
							<div class="col-sm-6 text-lg-end my-4 my-lg-0">
								<strong class="text-uppercase text-1 me-3 text-dark">follow me</strong>
								<ul class="social-icons float-lg-end">
									<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
									<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
									<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-5 order-md-2 mb-4 mb-lg-0 appear-animation" data-appear-animation="fadeInRightShorter">
						<img src="img/team/team-1.jpg" class="img-fluid" alt="">
					</div>
				</div>
			</c:if>
			<!--  남자     -->

			<!--  여자     -->
			<c:if test="${ci.user_gender eq '여자' }">
				<div class="row">
					<div class="col">
						<hr class="solid my-5">
					</div>
				</div>
				<div class="row">
					<div class="col-md-5 order-md-2 mb-4 mb-lg-0 appear-animation" data-appear-animation="fadeInLeftShorter">
						<img src="img/team/team-2.jpg" class="img-fluid" alt="">
					</div>
					<div class="col-md-7 order-2">
						<div class="overflow-hidden">
							<h2 class="text-color-dark font-weight-bold text-8 mb-0 pt-0 mt-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="300">${ci.user_name }</h2>
						</div>
						<div class="overflow-hidden mb-3">
							<p class="font-weight-bold text-primary text-uppercase mb-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="500">${ci.user_age }살</p>
						</div>
						<p class="lead appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="700">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam <a href="#">vehicula</a> sit amet enim ac sagittis. Curabitur eget leo varius, elementum mauris eget, egestas quam. Donec ante risus, dapibus sed lectus non, lacinia vestibulum nisi. Morbi vitae augue quam. Nullam ac laoreet libero.</p>
						<p class="pb-3 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="800">Consectetur adipiscing elit. Aliquam iaculis sit amet enim ac sagittis. Curabitur eget leo varius, elementum mauris eget, egestas quam.</p>
						<hr class="solid my-4 appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="900">
						<div class="row align-items-center appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1000">
							<div class="col-lg-6">
<!-- 								<a href="#" class="btn btn-modern btn-dark mt-3">Get In Touch</a> -->
<!-- 								<a href="#" class="btn btn-modern btn-primary mt-3">Hire Me</a> -->
							</div>
							<div class="col-sm-6 text-lg-end my-4 my-lg-0">
								<strong class="text-uppercase text-1 me-3 text-dark">follow me</strong>
								<ul class="social-icons float-lg-end">
									<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
									<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
									<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
		<!--  여자     -->
	</div>
</div>