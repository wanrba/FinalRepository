<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var = "URL" value = "${requestScope['javax.servlet.forward.servlet_path']}" />
	<c:choose>
		<c:when test="${URL eq '/login.do' || URL eq 'register.do'}">
			<footer id="footer" class="bg-color-dark-scale-2 border border-end-0 border-start-0 border-bottom-0 border-color-light-3 mt-0">
				<div class="container text-center my-3 py-5">
					<a href="index.do">
						<img src="resources/img/lazy.png" data-src="resources/img/landing/logo.png" width="102" height="45" class="appear-animation lazyload mb-4" alt="Porto" data-appear-animation="fadeIn" data-appear-animation-delay="300">
					</a>
					<p class="text-4 mb-4">Porto is exclusively available on themeforest.net by <a href="https://themeforest.net/user/okler/" class="text-color-light text-decoration-none" target="_blank">Okler.</a></p>
					<ul class="social-icons social-icons-big social-icons-dark-2">
						<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
						<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
						<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
					</ul>
				</div>
				<div class="copyright bg-dark py-4">
					<div class="container text-center py-2">
						<p class="mb-0 text-2">Copyright 2013 - 2021 - Porto - All Rights Reserved</p>
					</div>
				</div>
			</footer>
		</c:when>
		<c:when test="${URL eq '/productList.do'}">
			<footer id="footer" class="footer-texts-more-lighten">
				<div class="container">
					<div class="row py-4 my-5">
						<div class="col-md-6 col-lg-3 mb-5 mb-lg-0">
							<h5 class="text-4 text-color-light mb-3">CONTACT INFO</h5>
							<ul class="list list-unstyled">
								<li class="pb-1 mb-2">
									<span class="d-block font-weight-normal line-height-1 text-color-light">ADDRESS</span> 
									1234 Street Name, City, State, USA
								</li>
								<li class="pb-1 mb-2">
									<span class="d-block font-weight-normal line-height-1 text-color-light">PHONE</span>
									<a href="tel:+1234567890">Toll Free (123) 456-7890</a>
								</li>
								<li class="pb-1 mb-2">
									<span class="d-block font-weight-normal line-height-1 text-color-light">EMAIL</span>
									<a href="mailto:mail@example.com">mail@example.com</a>
								</li>
								<li class="pb-1 mb-2">
									<span class="d-block font-weight-normal line-height-1 text-color-light">WORKING DAYS/HOURS </span>
									Mon - Sun / 9:00AM - 8:00PM
								</li>
							</ul>
							<ul class="social-icons social-icons-clean-with-border social-icons-medium">
								<li class="social-icons-instagram">
									<a href="http://www.instagram.com/" class="no-footer-css" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a>
								</li>
								<li class="social-icons-twitter mx-2">
									<a href="http://www.twitter.com/" class="no-footer-css" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
								</li>
								<li class="social-icons-facebook">
									<a href="http://www.facebook.com/" class="no-footer-css" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a>
								</li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-3 mb-5 mb-lg-0">
							<h5 class="text-4 text-color-light mb-3">CUSTOMER SERVICE</h5>
							<ul class="list list-unstyled mb-0">
								<li class="mb-0"><a href="contact-us-1.html">Help & FAQs</a></li>
								<li class="mb-0"><a href="services.html">Order Tracking</a></li>
								<li class="mb-0"><a href="#">Shipping & Delivery</a></li>
								<li class="mb-0"><a href="#">Orders History</a></li>
								<li class="mb-0"><a href="#">Advanced Search</a></li>
								<li class="mb-0"><a href="#">Login</a></li>
								<li class="mb-0"><a href="about-us-1.html">Careers</a></li>
								<li class="mb-0"><a href="#">About Us</a></li>
								<li class="mb-0"><a href="#">Corporate Sales</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-3 mb-5 mb-md-0">
							<h5 class="text-4 text-color-light mb-3">POPULAR TAGS</h5>
							<ul class="list list-unstyled list-inline mb-0">
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">jeans</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">shoes</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">bag</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">jeasn</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">classic</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">black</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">bag</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">white</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">bag</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">bag</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">shoes</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">bag</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">jeans</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">shoes</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">white</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">black</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">white</a></li>
								<li class="list-inline-item"><a href="#" class="badge badge-dark rounded border border-color-light-3 font-weight-normal text-2 p-2">shoes</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-3">
							<h5 class="text-4 text-color-light mb-3">SUBSCRIBE NEWSLETTER</h5>
							<p class="mb-2">Get all the latest information on events, sales and offers. Sign up for newsletter:</p>
							<div class="alert alert-success d-none" id="newsletterSuccess">
								<strong>Success!</strong> You've been added to our email list.
							</div>
							<div class="alert alert-danger d-none" id="newsletterError"></div>
							<form id="newsletterForm" class="form-style-5 opacity-10" action="php/newsletter-subscribe.php" method="POST">
								<div class="row">
									<div class="form-group col">
										<input class="form-control" placeholder="Email Address" name="newsletterEmail" id="newsletterEmail" type="text" />
									</div>
								</div>
								<div class="row">
									<div class="form-group col">
										<button class="btn btn-primary btn-rounded btn-px-4 btn-py-2 font-weight-bold" type="submit">SUBSCRIBE</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="footer-copyright footer-copyright-style-2 pt-4 pb-5">
						<div class="row align-items-center justify-content-md-between">
							<div class="col-12 col-md-auto text-center text-md-start mb-2 mb-md-0">
								<p class="mb-0">Porto Template © 2021. All Rights Reserved</p>
							</div>
							<div class="col-12 col-md-auto">
								<div class="payment-cc justify-content-center justify-content-md-end">
									<i class="fab fa-cc-visa"></i>
									<i class="fab fa-cc-paypal"></i>
									<i class="fab fa-cc-stripe"></i>
									<i class="fab fa-cc-mastercard"></i>
									<i class="fab fa-cc-apple-pay"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</c:when>
		
		<c:otherwise>
			<footer id="footer" class="footer-texts-more-lighten">
				<div class="container">
					<div class="row py-4 my-5">
						<div class="col-md-6 col-lg-3 mb-5 mb-lg-0">
							<h5 class="text-4 text-color-light mb-3">CONTACT INFO</h5>
							<ul class="list list-unstyled">
								<li class="pb-1 mb-2">
									<span class="d-block font-weight-normal line-height-1 text-color-light">ADDRESS</span> 
									1234 Street Name, City, State, USA
								</li>
								<li class="pb-1 mb-2">
									<span class="d-block font-weight-normal line-height-1 text-color-light">PHONE</span>
									<a href="tel:+1234567890">Toll Free (123) 456-7890</a>
								</li>
								<li class="pb-1 mb-2">
									<span class="d-block font-weight-normal line-height-1 text-color-light">EMAIL</span>
									<a href="mailto:mail@example.com">mail@example.com</a>
								</li>
								<li class="pb-1 mb-2">
									<span class="d-block font-weight-normal line-height-1 text-color-light">WORKING DAYS/HOURS </span>
									Mon - Sun / 9:00AM - 8:00PM
								</li>
							</ul>
							<ul class="social-icons social-icons-clean-with-border social-icons-medium">
								<li class="social-icons-instagram">
									<a href="http://www.instagram.com/" class="no-footer-css" target="_blank" title="Instagram"><i class="fab fa-instagram"></i></a>
								</li>
								<li class="social-icons-twitter mx-2">
									<a href="http://www.twitter.com/" class="no-footer-css" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
								</li>
								<li class="social-icons-facebook">
									<a href="http://www.facebook.com/" class="no-footer-css" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a>
								</li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-2 mb-5 mb-lg-0">
							<h5 class="text-4 text-color-light mb-3">USEFUL LINKS</h5>
							<ul class="list list-unstyled mb-0">
								<li class="mb-0"><a href="contact-us-1.html">Help Center</a></li>
								<li class="mb-0"><a href="about-us.html">About Us</a></li>
								<li class="mb-0"><a href="contact-us.html">Contact Us</a></li>
								<li class="mb-0"><a href="page-careers.html">Careers</a></li>
								<li class="mb-0"><a href="blog-grid-4-columns.html">Blog</a></li>
								<li class="mb-0"><a href="#">Our Location</a></li>
								<li class="mb-0"><a href="#">Privacy Policy</a></li>
								<li class="mb-0"><a href="sitemap.html">Sitemap</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-lg-4 mb-5 mb-md-0">
							<h5 class="text-4 text-color-light mb-3">RECENT NEWS</h5>
							<article class="mb-3">
								<a href="blog-post.html" class="text-color-light text-3-5">Why should I buy a Web Template?</a>
								<p class="line-height-2 mb-0"><a href="#">Nov 25, 2020</a> in <a href="#">Design,</a> <a href="#">Coding</a></p>
							</article>
							<article class="mb-3">
								<a href="blog-post.html" class="text-color-light text-3-5">Creating Amazing Website with Porto</a>
								<p class="line-height-2 mb-0"><a href="#">Nov 25, 2020</a> in <a href="#">Design,</a> <a href="#">Coding</a></p>
							</article>
							<article>
								<a href="blog-post.html" class="text-color-light text-3-5">Best Practices for Top UI Design</a>
								<p class="line-height-2 mb-0"><a href="#">Nov 25, 2020</a> in <a href="#">Design,</a> <a href="#">Coding</a></p>
							</article>
						</div>
						<div class="col-md-6 col-lg-3">
							<h5 class="text-4 text-color-light mb-3">SUBSCRIBE NEWSLETTER</h5>
							<p class="mb-2">Get all the latest information on events, sales and offers. Sign up for newsletter:</p>
							<div class="alert alert-success d-none" id="newsletterSuccess">
								<strong>Success!</strong> You've been added to our email list.
							</div>
							<div class="alert alert-danger d-none" id="newsletterError"></div>
							<form id="newsletterForm" class="form-style-5 opacity-10" action="php/newsletter-subscribe.php" method="POST">
								<div class="row">
									<div class="form-group col">
										<input class="form-control" placeholder="Email Address" name="newsletterEmail" id="newsletterEmail" type="text" />
									</div>
								</div>
								<div class="row">
									<div class="form-group col">
										<button class="btn btn-primary btn-rounded btn-px-4 btn-py-2 font-weight-bold" type="submit">SUBSCRIBE</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="footer-copyright footer-copyright-style-2 pt-4 pb-5">
						<div class="row">
							<div class="col-12 text-center">
								<p class="mb-0">Porto Template © 2021. All Rights Reserved</p>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</c:otherwise>
	</c:choose>
</div>
<!-- Vendor -->
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/jquery.appear/jquery.appear.min.js"></script>
<script src="resources/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="resources/vendor/jquery.cookie/jquery.cookie.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="resources/vendor/jquery.validation/jquery.validate.min.js"></script>
<script src="resources/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="resources/vendor/jquery.gmap/jquery.gmap.min.js"></script>
<script src="resources/vendor/lazysizes/lazysizes.min.js"></script>
<script src="resources/vendor/isotope/jquery.isotope.min.js"></script>
<script src="resources/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="resources/vendor/vide/jquery.vide.min.js"></script>
<script src="resources/vendor/vivus/vivus.min.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="resources/js/theme.js"></script>

<!-- Theme Custom -->
<script src="resources/js/custom.js"></script>

<!-- Theme Initialization Files -->
<script src="resources/js/theme.init.js"></script>

<!-- fullCalendar Library -->
<script src="resources/js/calendar/moment.min.js"></script>
<script src="resources/js/calendar/fullcalendar.min.js"></script>
<script src="resources/js/calendar/fullcalendar-custom-script.js"></script>

<%-- URL이 로그인인 경우 --%>
<c:if test="${URL eq '/loginForm.do'}">
	<script>
		$(document).ready(function() {
			$(function() {
				$("#loginBtn").on("click", function() {
					$.ajax({
						url : "chkIdPwd.do",
						data : {
							"user_id" : $("#user_id").val(),
							"user_pwd" : $("#user_pwd").val()
						},
						type : "POST",
						success : function(data) {
							if(data == 1) {
								$("#frmSignIn").submit();
							} else {
								alert("없는 아이디이거나 비밀번호가 틀렸습니다.");
							}
							
						},
						error : function(data) {
							
						}
					});
				});
			});
		});
	</script>
</c:if>

<!-- 아이디 입력 시 중복체크 -->
<c:if test="${URL eq '/registerForm.do'}">
	<script>
		$(document).ready(function() {
			$(function() {
				$("#user_id").on("blur", function() {
					$.ajax({
						url : "chkIdPwd.do",
						data : {
							"user_id" : $("#user_id").val()
						},
						type : "POST",
						success : function(data) {
							if(data == 1) {
								alert("이미 존재하는 아이디입니다.");
								$("#user_id").text(" ");
							} else {
								
							}
							
						},
						error : function(data) {
							
						}
					});
				});
				
				$("#registBtn").on("click", function() {
					var bool = false;
					$("#frmSignUp").find("input").each(function() {
						if(!$(this).val()) {
							alert($(this).parent().text().trim() + "를 입력하세요.")
							$(this).focus();
							bool = true;
							return false;
						} else {
							bool = false;
						}
					});
					
					if(!bool) {
						console.log($("#user_phone").val().length)
						if($("#user_phone").val().length <= 11) {
							alert("연락처에 -을 포함하여 입력해주세요.");
						} else {
							$("#frmSignUp").submit();
						}
					}
					
				});
			});
		});
	</script>
</c:if>
<c:if test="${URL ne '/applicationCouple.do'}">
	<script>
		$(document).ready(function() {
			$(function() {
				if("${acDto.USER_FROM_INDEX}" != "") {
					if(confirm("커플 요청이 있습니다. 확인하시겠습니까")) {
						location.href = "applicationCouple.do";
					}
				}
				
				$("#rejectBtn").on("click", function() {
					location.href = "rejectApplicationCouple.do";
				});
				
			});
		});
	</script>
</c:if>


<c:if test="${URL eq '/calendar.do'}">
	<script>
		$(document).ready(function() {
			$(function() {
	            get_calendar();
	         });
		});
	</script>
</c:if>
<!-- <script> -->
<!-- // //김미연 챗봇 설치 코드 -->
<!-- //     window.dyc = { -->
<!-- //         "chatbotUid": "536d60e6f550ab80" -->
<!-- //     }; -->
<!-- </script> -->
<!-- <script async src="https://cloudturing.chat/v1.0/chat.js"></script> -->