<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var = "URL" value = "${requestScope['javax.servlet.forward.servlet_path']}" />
<div role="main" class="main">
	<section class="page-header page-header-modern bg-color-light-scale-1 page-header-lg">
		<div class="container">
			<div class="row">
				<div class="col-md-12 align-self-center p-static order-2 text-center">
					<h1 class="font-weight-bold text-dark">
						<c:choose>
							<c:when test="${URL eq '/loginForm.do'}">
								Login
							</c:when>
							<c:otherwise>
								Register
							</c:otherwise>
						</c:choose>
					</h1>
				</div>
				<div class="col-md-12 align-self-center order-1">
					<ul class="breadcrumb d-block text-center">
						<li><a href="index.do">Home</a></li>
						<li class="active">Pages</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<div class="container py-4">
		<div class="row justify-content-center">
			<c:choose>
				<c:when test="${URL eq '/loginForm.do'}">
					<div class="col-md-6 col-lg-5 mb-5 mb-lg-0">
						<h2 class="font-weight-bold text-5 mb-0">Login</h2>
						<form action="login.do" id="frmSignIn" method="post" class="needs-validation">
							<div class="row">
								<div class="form-group col">
									<label class="form-label text-color-dark text-3">Email address
										<span class="text-color-danger">*</span>
									</label>
									<input type="text" value="" class="form-control form-control-lg text-4" id = "user_id" name = "user_id" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label text-color-dark text-3">Password
										<span class="text-color-danger">*</span>
									</label>
									<input type="password" value="" class="form-control form-control-lg text-4" id = "user_pwd" name = "user_pwd" required>
								</div>
							</div>
							<div class="row justify-content-between">
								<div class="form-group col-md-auto">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="rememberme">
										<label class="form-label custom-control-label cur-pointer text-2" for="rememberme">Remember Me</label>
									</div>
								</div>
								<div class="form-group col-md-auto">
									<a class="text-decoration-none text-color-dark text-color-hover-primary font-weight-semibold text-2" href="#">Forgot Password?</a>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<button type="button" id = "loginBtn" class="btn btn-dark btn-modern w-100 text-uppercase rounded-0 font-weight-bold text-3 py-3" data-loading-text="Loading...">Login</button>
									<div class="divider">
										<span class="bg-light px-4 position-absolute left-50pct top-50pct transform3dxy-n50">or</span>
									</div>
									<a href="registerForm.do" class="btn btn-primary-scale-2 btn-modern w-100 text-transform-none rounded-0 font-weight-bold align-items-center d-inline-flex justify-content-center text-3 py-3" data-loading-text="Loading...">
<!-- 										<i class="fab fa-facebook text-5 me-2"></i> -->
										Register
									</a>
								</div>
							</div>
						</form>
					</div>
				</c:when>
				<c:otherwise>
					<div class="col-md-6 col-lg-5">
						<h2 class="font-weight-bold text-5 mb-0">Register</h2>
						<form action="register.do" id="frmSignUp" method="post" class="needs-validation">
							<div class="row">
								<div class="form-group col">
									<label class="form-label text-color-dark text-3">Id <span class="text-color-danger">*</span></label>
									<input type="text" id = "user_id" name = "user_id" value="" class="form-control form-control-lg text-4" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label text-color-dark text-3">Password <span class="text-color-danger">*</span></label>
									<input type="password" id = "user_pwd" name = "user_pwd" value="" class="form-control form-control-lg text-4" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label text-color-dark text-3">Password Confirm <span class="text-color-danger">*</span></label>
									<input type="password" id = "pwd_confirm" value="" class="form-control form-control-lg text-4" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label text-color-dark text-3">User Name <span class="text-color-danger">*</span></label>
									<input type="text" id = "user_name" name = "user_name" value="" class="form-control form-control-lg text-4" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label text-color-dark text-3">User Phone <span class="text-color-danger">*</span></label>
									<input type="tel" id = "user_phone" name = "user_phone" value="" class="form-control form-control-lg text-4" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label text-color-dark text-3">User Birth <span class="text-color-danger">*</span></label>
									<input type="date" id = "user_birth" name = "user_birth" value="" class="form-control form-control-lg text-4" required>
								</div>
							</div>
							<div class="row">
								<label class="form-label text-color-dark text-3">User Birth <span class="text-color-danger">*</span></label>
								<div class="radio">
									<label>
										<input type="radio" name="user_gender" id="optionsRadios1" value="남자" checked="">
										남자
									</label>
									<label>
										<input type="radio" name="user_gender" id="optionsRadios2" value="여자">
										여자
									</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<button type="button" id  ="registBtn" class="btn btn-dark btn-modern w-100 text-uppercase rounded-0 font-weight-bold text-3 py-3" data-loading-text="Loading...">Register</button>
								</div>
							</div>
						</form>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>