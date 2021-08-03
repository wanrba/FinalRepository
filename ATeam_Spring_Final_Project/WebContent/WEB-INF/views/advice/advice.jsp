<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- <c:set var = "advice" value="${adviceList }"></c:set> --%>
<div role="main" class="main">
	<section class="page-header page-header-modern bg-color-light-scale-1 page-header-lg mb-0">
		<div class="container">
			<div class="row">
				<div class="col-md-12 align-self-center p-static order-2 text-center">
					<h1 class="font-weight-bold text-dark">Secondary Navbar</h1>
				</div>
				<div class="col-md-12 align-self-center order-1">
					<ul class="breadcrumb d-block text-center">
						<li><a href="#">Home</a></li>
						<li class="active">Pages</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<aside class="nav-secondary" id="navSecondary" data-plugin-sticky data-plugin-options="{'minWidth': 991, 'padding': {'top': 71}}">
		<div class="container">
			<div class="row">
				<div class="col">
					<ul class="nav nav-pills justify-content-center">
					
						<c:choose>
							<c:when test="${fn:length(adviceList) } == 0"></c:when>
							<c:otherwise>
								<c:forEach items="${adviceList }" var="al" begin="0" end = "${fn:length(adviceList) }" varStatus="status">
									<li class="nav-item">
										<a class="nav-link" data-hash data-hash-offset="170" href="#${status.count }">${fn:substringAfter((al.advice_title), ':' )}</a>
									</li>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</aside>
	<div class="container py-4">
		<div class="row">
			<div class="col py-4">
				<c:choose>
					<c:when test="${fn:length(adviceList) } == 0">
						<p>
							<h2>현재 등록된 조언이 없습니다.</h2>
						</p>
						<p>
							<h2>빠른 시일내에 업데이트 하도록 하겠습니다.</h2>
						</p>
					</c:when>
					<c:otherwise>
						<c:forEach items="${adviceList }" var="al" begin="0" end = "${fn:length(adviceList) }" varStatus="status">
							<div id="${status.count }">
								<h2 class="font-weight-normal text-7 mb-2">${fn:substringBefore((al.advice_title), ':' )} - <strong class="font-weight-extra-bold">${fn:substringAfter((al.advice_title), ':' )} </strong> </h2>
								<img class="float-start img-fluid" width="300" height="211" src="${al.advice_img }" alt="Device">
								<p>${al.advice_content }</p>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>