<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="urlPath" value="${pageContext.request.contextPath}/resources" />
<c:set var = "URL" value = "${requestScope['javax.servlet.forward.servlet_path']}" />

<!DOCTYPE html>
<html>
	<head>
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title>Porto - Responsive HTML5 Template</title>	

		<meta name="keywords" content="HTML5 Template" />
		<meta name="description" content="Porto - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Favicon -->
		<link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="resources/img/apple-touch-icon.png">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

		<!-- Web Fonts  -->
		<link id="googleFonts" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800%7COpen+Sans:400,700,800&display=swap" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="resources/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/vendor/fontawesome-free/css/all.min.css">
		<link rel="stylesheet" href="resources/vendor/animate/animate.compat.css">
		<link rel="stylesheet" href="resources/vendor/simple-line-icons/css/simple-line-icons.min.css">
		<link rel="stylesheet" href="resources/vendor/owl.carousel/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="resources/vendor/owl.carousel/assets/owl.theme.default.min.css">
		<link rel="stylesheet" href="resources/vendor/magnific-popup/magnific-popup.min.css">

		<!-- Theme CSS -->
		<link rel="stylesheet" href="resources/css/theme.css">
		<link rel="stylesheet" href="resources/css/theme-elements.css">
		<link rel="stylesheet" href="resources/css/theme-blog.css">
		<link rel="stylesheet" href="resources/css/theme-shop.css">

		<!-- Demo CSS -->
		<link rel="stylesheet" href="resources/css/demos/demo-landing.css">

		<!-- Skin CSS -->
		<link id="skinCSS" rel="stylesheet" href="resources/css/skins/skin-landing.css">

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="resources/css/custom.css">

		<!-- Head Libs -->
		<script src="resources/vendor/modernizr/modernizr.min.js"></script>
		<c:if test="${URL eq '/calendar.do' }">
			<link href="resources/css/calendar/fullcalendar.min.css" rel='stylesheet'/>
		</c:if>
	</head>


<c:choose>
	<c:when test="${URL eq '/advice.do' }">
		<body data-plugin-scroll-spy data-plugin-options="{'target': '#navSecondary'}">
	</c:when>
	<c:otherwise>
		<body data-plugin-page-transition>
	</c:otherwise>
</c:choose>
	<tiles:insertAttribute name="header" />
	<tiles:insertAttribute name="menu" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
</body>
</html>