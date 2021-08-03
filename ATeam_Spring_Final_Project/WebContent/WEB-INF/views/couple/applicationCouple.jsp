<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div role="main" class="main">
	<section class="section section-concept section-no-border section-dark section-angled section-angled-reverse pt-5 m-0" style="background-image: url(resources/img/landing/header_bg.jpg); background-size: cover; background-position: center; animation-duration: 750ms; animation-delay: 300ms; animation-fill-mode: forwards; min-height: 645px;">
		<div class="section-angled-layer-bottom section-angled-layer-increase-angle bg-light" style="padding: 8rem 0;"></div>
		<div class="container pt-lg-5 mt-5"></div>
	</section>
	<c:choose>
		<c:when test="${acDto eq null }">
			<div id="examples" class="container py-2">
				<div class="row">
					<div class="col-lg-3 order-2 order-lg-1"></div>
					<div class="col-lg-9 order-1 order-lg-2">
						<div class="overflow-hidden mb-1">
							<h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-extra-bold">Contact</strong> Us</h2>
						</div>
						<div class="overflow-hidden mb-4 pb-3">
							<p class="mb-0">Feel free to ask for details, don't save any questions!</p>
						</div>
						<form class="contact-form-recaptcha-v3" action="applicationCouple.do" method="POST">
							<div class="contact-form-success alert alert-success d-none mt-4">
								<strong>Success!</strong> Your message has been sent to us.
							</div>
							<div class="contact-form-error alert alert-danger d-none mt-4">
								<strong>Error!</strong> There was an error sending your message.
								<span class="mail-error-message text-1 d-block"></span>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label mb-1 text-2">USER TO ID</label>
									<input type="text" name="user_id" id = "user_id" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control text-3 h-auto py-2" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label mb-1 text-2">Subject</label>
									<input type="text" name="ac_title" id = "ac_title" value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control text-3 h-auto py-2" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label mb-1 text-2">Message</label>
									<textarea maxlength="5000" name="ac_content" id = "ac_content" data-msg-required="Please enter your message." rows="5" class="form-control text-3 h-auto py-2" required></textarea>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<input type="submit" value="Send Message" class="btn btn-primary btn-modern" data-loading-text="Loading...">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div id="examples" class="container py-2">
				<div class="row">
					<div class="col-lg-3 order-2 order-lg-1"></div>
					<div class="col-lg-9 order-1 order-lg-2">
						<div class="overflow-hidden mb-1">
							<h2 class="font-weight-normal text-7 mb-0"><strong class="font-weight-extra-bold">Contact</strong> Us</h2>
						</div>
						<div class="overflow-hidden mb-4 pb-3">
							<p class="mb-0">Feel free to ask for details, don't save any questions!</p>
						</div>
						<form class="contact-form-recaptcha-v3" action="accceptCouple.do" method="POST">
							<div class="contact-form-success alert alert-success d-none mt-4">
								<strong>Success!</strong> Your message has been sent to us.
							</div>
							<div class="contact-form-error alert alert-danger d-none mt-4">
								<strong>Error!</strong> There was an error sending your message.
								<span class="mail-error-message text-1 d-block"></span>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label mb-1 text-2">USER TO ID</label>
									<input type="text" name="user_id" id = "user_id" value="${acDto.USER_ID }" data-msg-required="Please enter your name." maxlength="100" class="form-control text-3 h-auto py-2" required readonly="readonly">
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label mb-1 text-2">Subject</label>
									<input type="text" name="ac_title" id = "ac_title" value="${acDto.AC_TITLE }" data-msg-required="Please enter the subject." maxlength="100" class="form-control text-3 h-auto py-2" required readonly="readonly">
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<label class="form-label mb-1 text-2">Message</label>
									<textarea maxlength="5000" name="ac_content" id = "ac_content" data-msg-required="Please enter your message." rows="5" class="form-control text-3 h-auto py-2" required readonly="readonly">${acDto.AC_CONTENT }</textarea>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<input type="button" id = "rejectBtn" value="Reject" class="btn btn-primary btn-modern" data-loading-text="Loading...">
									<input type="submit" value="Accept" class="btn btn-primary btn-modern" data-loading-text="Loading...">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</div>