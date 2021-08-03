<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="URL" value="${requestScope['javax.servlet.forward.servlet_path']}" />

<div role="main" class="main shop pt-4">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 order-2 order-lg-1">
				<aside class="sidebar">
					<form action="productList.do" method="get">
						<div class="input-group mb-3 pb-1">
							<input class="form-control text-1" placeholder="Search..." name="searchKeyword" id="searchKeyword" type="text">
							<button type="submit" class="btn btn-dark text-1 p-2">
								<i class="fas fa-search m-2"></i>
							</button>
						</div>
					</form>
					<h5 class="font-weight-semi-bold pt-3">Categories</h5>
					<ul class="nav nav-list flex-column">
						<c:forEach items="${result.categoryList }" var="ct">
						<li class="nav-item">
							<a class="nav-link" href="productList.do?category_name=${ct.category_name }&nowPage=1">${ct.category_name }</a>
						</li>
					</c:forEach>
				</ul>
				<h5 class="font-weight-semi-bold pt-5">Tags</h5>
				<div class="mb-3 pb-1">
					<a href="#">
						<span class="badge badge-dark badge-sm rounded-pill text-uppercase px-2 py-1 me-1">Nike</span>
					</a>
				</div>
				<div class="row mb-5">
					<div class="col">
						<h5 class="font-weight-semi-bold pt-5">Top Rated Products</h5>
										
						<!--  Couple Shop에서 보여줄 인기상품  -->
						<div class="product row row-gutter-sm align-items-center mb-4">
							<div class="col-5 col-lg-5">
								<div class="product-thumb-info border-0">
									<a href="shop-product-sidebar-left.html">
										<div class="product-thumb-info-image">
											<img alt="" class="img-fluid" src="resources/img/products/product-grey-6.jpg">
										</div>
									</a>
								</div>
							</div>
							<div class="col-7 col-lg-7 ms-md-0 ms-lg-0 ps-lg-1 pt-1">
								<a href="#" class="d-block text-uppercase text-decoration-none text-color-default text-color-hover-primary line-height-1 text-0 mb-2">hat</a>
								<h3 class="text-3-5 font-weight-medium font-alternative text-transform-none line-height-3 mb-0"><a href="shop-product-sidebar-right.html" class="text-color-dark text-color-hover-primary text-decoration-none">Blue Hat</a></h3>
								<div title="Rated 5 out of 5">
									<input type="text" class="d-none" value="5" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'dark', 'size':'xs'}">
								</div>
								<p class="price text-4 mb-0">
									<span class="sale text-color-dark font-weight-semi-bold">$299,00</span>
									<span class="amount">$289,00</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</aside>
		</div>
		<!--  Couple Shop에서 보여줄 인기상품  -->
						
		<c:choose>
			<c:when test="${URL eq '/productList.do' }">
				<!--  상품 들어갈 위치 -->
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="masonry-loader masonry-loader-showing">
						<div class="row products product-thumb-info-list" data-plugin-masonry data-plugin-options="{'layoutMode': 'fitRows'}">
							
							
							<c:forEach items="${result.productList }" var="pd" >
								<div class="col-sm-6 col-lg-4">
									<div class="product mb-0">
										<div class="product-thumb-info border-0 mb-3">
<%-- 													<fmt:formatDate value="${pd.pro_rdate }" var="pro_rdate" pattern="yyyy-MM-dd"/> --%>
<%-- 													<fmt:parseNumber value="${pro_rdate.time / (1000*60*60*24)}" integerOnly="true" var="pro_rdate" /> --%>
<%-- 													<fmt:formatDate value="${today }" var="today" pattern="yyyy-MM-dd"/> --%>
<%-- 													<fmt:parseNumber value="${today.time / (1000*60*60*24)}" integerOnly="true" var="today" /> --%>
<%-- 													<c:if test="${today - pro_rdate <= 7 }"> --%>
<!-- 														<div class="product-thumb-info-badges-wrapper"> -->
<!-- 															<span class="badge badge-ecommerce badge-success"> -->
<!-- 																NEW -->
<!-- 															</span> -->
<!-- 														</div> -->
<%-- 													</c:if> --%>
											<div class="product-thumb-info-badges-wrapper">
												<span class="badge badge-ecommerce badge-success"></span>
												<span class="badge badge-ecommerce badge-danger">${pd.pro_discount }% OFF</span>
											</div>
											<!-- 장바구니 담기 -->
											<div class="addtocart-btn-wrapper">
												<a href="shop-cart.html" class="text-decoration-none addtocart-btn" title="Add to Cart">
													<i class="icons icon-bag"></i>
												</a>
											</div>
											
											<!-- 상품 상세보기 -->
											<a href="ajax/shop-product-quick-view.html" class="quick-view text-uppercase font-weight-semibold text-2">
												QUICK VIEW
											</a>
											
											<!-- 상품 이미지 -->
											<a href="productDetail.do?pro_index=${pd.pro_index }">
												<div class="product-thumb-info-image">
													<img alt="" class="img-fluid" src="${pd.pro_img }">
												</div>
											</a>
											<!-- 상품 이미지 -->
										</div>
										
										<!-- 상품 카테고리 -->
										<div class="d-flex justify-content-between">
											<div>
												<a href="#" class="d-block text-uppercase text-decoration-none text-color-default text-color-hover-primary line-height-1 text-0 mb-1">${pd.pro_category }</a>
												<h3 class="text-3-5 font-weight-medium font-alternative text-transform-none line-height-3 mb-0"><a href="shop-product-sidebar-right.html" class="text-color-dark text-color-hover-primary">${pd.pro_name }</a></h3>
											</div>
											<a href="#" class="text-decoration-none text-color-default text-color-hover-dark text-4"><i class="far fa-heart"></i></a>
										</div>
										<!-- 상품 카테고리 -->
										
										<!-- 할인기간 -->
										<div title="Rated 5 out of 5">
											<input type="text" class="d-none" value="5" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'default', 'size':'xs'}">
										</div>
										<!-- 할인기간 -->
										
										<!-- 상품 가격 -->
										<p class="price text-5 mb-3">
											<span class="sale text-color-dark font-weight-semi-bold">
<%-- 														${pd.pro_beforePrice } --%>
<%-- 														<fmt:setLocale value="en_us"/> --%>
												<fmt:formatNumber value = "${pd.pro_afterPrice }" type = "currency" />
											</span>
											<span class="amount">
												<fmt:formatNumber value="${pd.pro_beforePrice }" type="currency" />
											</span>
										</p>
									</div>
								</div>
							</c:forEach>
<!-- 							<div class="row mt-4"> -->
<!-- 								<div class="col"> -->
<!-- 									<ul class="pagination float-end"> -->
<!-- 										<li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-left"></i></a></li> -->
<!-- 										<li class="page-item active"><a class="page-link" href="#">1</a></li> -->
<!-- 										<li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 										<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 										<li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->

							<c:if test="${result.paging.startPage < result.paging.endPage }">
								<div class = "col">
									<ul class="pagination float-end">
										<!-- 이전페이지  <  -->
										<c:if test="${result.paging.startPage != 1 }">
											<li class="page-item">
												<a href="productList.do?nowPage=${result.paging.startPage - 1 }&cntPerPage=${result.paging.cntPerPage}" class = "page-link">
													<i class="fas fa-angle-left"></i>
												</a>
											</li>
										</c:if>
										<c:forEach begin="${result.paging.startPage }" end="${result.paging.endPage }" var="p">
											<c:choose>
												<c:when test="${p == result.paging.nowPage }">
													<%--현재 페이지 일경우 링크 해제  --%>
													<li class="page-item active">
														<a class="page-link" href="#">${p }</a>
													</li>
												</c:when>
												<c:when test="${p != result.paging.nowPage }">
													<%-- 다른페이지 링크  --%>
													<li class="page-item">
														<a class="page-link" href="productList.do?nowPage=${p }&cntPerPage=${result.paging.cntPerPage}">${p }</a>
													</li>
												</c:when>
											</c:choose>
										</c:forEach>
										<!--  다음페이지 > -->
										<c:if test="${result.paging.endPage != result.paging.lastPage}">
											<li class="page-item">
												<a class="page-link" href="productList.do?nowPage=${result.paging.endPage+1 }&cntPerPage=${result.paging.cntPerPage}">
													<i class="fas fa-angle-right"></i>
												</a>
											</li>
										</c:if>
									</ul>
								</div>
							</c:if>
						</div>
					</div>
					<!--  상품 들어갈 위치 -->
				</div>
			</c:when>
			<c:when test="${URL eq '/productDetail.do' }">
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="row">
						<div class="col-lg-6">
							<div class="thumb-gallery-wrapper">
								<div class="thumb-gallery-detail  owl-theme manual nav-inside nav-style-1 nav-dark mb-3">
									<div>
										<img alt="" class="img-fluid" src="${result.detail.pro_img }">
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-lg-6">
							<div class="summary entry-summary position-relative">
<!-- 								<div class="position-absolute top-0 right-0"> -->
<!-- 									<div class="products-navigation d-flex"> -->
<!-- 										<a href="#" class="prev text-decoration-none text-color-dark text-color-hover-primary border-color-hover-primary" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-original-title="Red Ladies Handbag"><i class="fas fa-chevron-left"></i></a> -->
<!-- 										<a href="#" class="next text-decoration-none text-color-dark text-color-hover-primary border-color-hover-primary" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-original-title="Green Ladies Handbag"><i class="fas fa-chevron-right"></i></a> -->
<!-- 									</div> -->
<!-- 								</div> -->
								<h1 class="mb-0 font-weight-bold text-7">${result.detail.pro_name }</h1>
									<div class="pb-0 clearfix d-flex align-items-center">
										<div title="Rated 3 out of 5" class="float-start">
											<input type="text" class="opacity-0" value="3" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'primary', 'size':'xs'}">
										</div>
										<div class="review-num">
											<a href="#description" class="text-decoration-none text-color-default text-color-hover-primary" data-hash data-hash-offset="75" data-hash-trigger-click=".nav-link-reviews" data-hash-trigger-click-delay="1000">
												<span class="count text-color-inherit" itemprop="ratingCount">(0</span> reviews)
											</a>
										</div>
									</div>
									<div class="divider divider-small">
										<hr class="bg-color-grey-scale-4">
									</div>
									<p class="price mb-3">
										<span class="sale text-color-dark"><fmt:formatNumber value="${result.detail.pro_afterPrice }" type="currency"/> </span>
										<span class="amount"><fmt:formatNumber value = "${result.detail.pro_beforePrice}" type = "currency"/> </span>
									</p>
									<p class="text-3-5 mb-3">${result.detail.pro_discription }</p>
<!-- 									<ul class="list list-unstyled text-2"> -->
<!-- 										<li class="mb-0">AVAILABILITY: <strong class="text-color-dark">AVAILABLE</strong></li> -->
<!-- 										<li class="mb-0">SKU: <strong class="text-color-dark">1234567890</strong></li> -->
<!-- 									</ul> -->
									<form enctype="multipart/form-data" method="post" class="cart" action="shop-cart.html">
										<table class="table table-borderless" style="max-width: 300px;">
											<tbody>
												<tr>
													<td class="align-middle text-2 px-0 py-2">SIZE:</td>
													<td class="px-0 py-2">
														<div class="custom-select-1">
															<select name="size" class="form-control form-select text-1 h-auto py-2">
																<option value="">PLEASE CHOOSE</option>
																<option value="blue">Small</option>
																<option value="red">Normal</option>
																<option value="green">Big</option>
															</select>
														</div>
													</td>
												</tr>
												<tr>
													<td class="align-middle text-2 px-0 py-2">COLOR:</td>
													<td class="px-0 py-2">
														<div class="custom-select-1">
															<select name="color" class="form-control form-select text-1 h-auto py-2">
																<option value="">PLEASE CHOOSE</option>
																<option value="blue">Blue</option>
																<option value="red">Red</option>
																<option value="green">Green</option>
															</select>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
										<hr>
										<div class="quantity quantity-lg">
											<input type="button" class="minus text-color-hover-light bg-color-hover-primary border-color-hover-primary" value="-">
											<input type="text" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
											<input type="button" class="plus text-color-hover-light bg-color-hover-primary border-color-hover-primary" value="+">
										</div>
											<button type="submit" class="btn btn-dark btn-modern text-uppercase bg-color-hover-primary border-color-hover-primary">Add to cart</button>
											<hr>
										</form>
<!-- 										<div class="d-flex align-items-center"> -->
<!-- 											<ul class="social-icons social-icons-medium social-icons-clean-with-border social-icons-clean-with-border-border-grey social-icons-clean-with-border-icon-dark me-3 mb-0"> -->
<!-- 												Facebook -->
<!-- 												<li class="social-icons-facebook"> -->
<!-- 													<a href="http://www.facebook.com/sharer.php?u=https://www.okler.net" target="_blank" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="top" title="Share On Facebook"> -->
<!-- 														<i class="fab fa-facebook-f"></i> -->
<!-- 													</a> -->
<!-- 												</li> -->
<!-- 												Google+ -->
<!-- 												<li class="social-icons-googleplus"> -->
<!-- 													<a href="https://plus.google.com/share?url=https://www.okler.net" target="_blank" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="top" title="Share On Google+"> -->
<!-- 														<i class="fab fa-google-plus-g"></i> -->
<!-- 													</a> -->
<!-- 												</li> -->
<!-- 												Twitter -->
<!-- 												<li class="social-icons-twitter"> -->
<!-- 													<a href="https://twitter.com/share?url=https://www.okler.net&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="top" title="Share On Twitter"> -->
<!-- 														<i class="fab fa-twitter"></i> -->
<!-- 													</a> -->
<!-- 												</li> -->
<!-- 												Email -->
<!-- 												<li class="social-icons-email"> -->
<!-- 													<a href="mailto:?Subject=Share This Page&amp;Body=I%20saw%20this%20and%20thought%20of%20you!%20 https://www.okler.net" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="top" title="Share By Email"> -->
<!-- 														<i class="far fa-envelope"></i> -->
<!-- 													</a> -->
<!-- 												</li> -->
<!-- 											</ul> -->
<!-- 											<a href="#" class="d-flex align-items-center text-decoration-none text-color-dark text-color-hover-primary font-weight-semibold text-2"> -->
<!-- 												<i class="far fa-heart me-1"></i> SAVE TO WISHLIST -->
<!-- 											</a> -->
<!-- 										</div> -->
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<div id="description" class="tabs tabs-simple tabs-simple-full-width-line tabs-product tabs-dark mb-2">
										<ul class="nav nav-tabs justify-content-start">
											<li class="nav-item"><a class="nav-link active font-weight-bold text-3 text-uppercase py-2 px-3" href="#productDescription" data-bs-toggle="tab">Description</a></li>
											<li class="nav-item"><a class="nav-link font-weight-bold text-3 text-uppercase py-2 px-3" href="#productInfo" data-bs-toggle="tab">Additional Information</a></li>
											<li class="nav-item"><a class="nav-link nav-link-reviews font-weight-bold text-3 text-uppercase py-2 px-3" href="#productReviews" data-bs-toggle="tab">Reviews (0)</a></li>
										</ul>
										<div class="tab-content p-0">
											<div class="tab-pane px-0 py-3 active" id="productDescription">
												${result.detail.pro_discription }
											</div>
											<div class="tab-pane px-0 py-3" id="productInfo">
												<table class="table table-striped m-0">
													<tbody>
														<tr>
															<th class="border-top-0">
																Size:
															</th>
															<td class="border-top-0">
																Unique
															</td>
														</tr>
														<tr>
															<th>
																Colors
															</th>
															<td>
																Red, Blue
															</td>
														</tr>
														<tr>
															<th>
																Material
															</th>
															<td>
																100% Leather
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="tab-pane px-0 py-3" id="productReviews">
												<ul class="comments">
<%-- 													<c:forEach> --%>
														<li>
															<div class="comment">
																<div class="img-thumbnail border-0 p-0 d-none d-md-block">
																	<img class="avatar rounded-circle" alt="" src="resources/img/avatars/avatar.jpg">
																</div>
																<div class="comment-block">
																	<div class="comment-arrow"></div>
																	<span class="comment-by">
																		<strong>John Doe</strong>
																		<span class="float-end">
																			<div class="pb-0 clearfix">
																				<div title="Rated 3 out of 5" class="float-start">
																					<input type="text" class="opacity-0" value="3" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'primary', 'size':'xs'}">
																				</div>
																				<div class="review-num">
																					<span class="count" itemprop="ratingCount">2</span> reviews
																				</div>
																			</div>
																		</span>
																	</span>
																	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra odio, gravida urna varius vitae, gravida pellentesque urna varius vitae.</p>
																</div>
															</div>
														</li>
<%-- 													</c:forEach> --%>
												</ul>
												<hr class="solid my-5">
												<h4>Add a review</h4>
												<div class="row">
													<div class="col">
														<form action="" id="submitReview" method="post">
															<div class="row">
																<div class="form-group col pb-2">
																	<label class="form-label required font-weight-bold text-dark">Rating</label>
																	<input type="text" class="rating-loading" value="0" title="" data-plugin-star-rating data-plugin-options="{'color': 'primary', 'size':'sm'}">
																</div>
															</div>
															<div class="row">
																<div class="form-group col-lg-6">
																	<label class="form-label required font-weight-bold text-dark">Name</label>
																	<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="name" required>
																</div>
																<div class="form-group col-lg-6">
																	<label class="form-label required font-weight-bold text-dark">Email Address</label>
																	<input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="email" required>
																</div>
															</div>
															<div class="row">
																<div class="form-group col">
																	<label class="form-label required font-weight-bold text-dark">Review</label>
																	<textarea maxlength="5000" data-msg-required="Please enter your review." rows="8" class="form-control" name="review" id="review" required></textarea>
																</div>
															</div>
															<div class="row">
																<div class="form-group col mb-0">
																	<input type="submit" value="Post Review" class="btn btn-primary btn-modern" data-loading-text="Loading...">
																</div>
															</div>
														</form>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<hr class="solid my-5">

							<h4 class="mb-3">Related <strong>Products</strong></h4>
							<div class="products row">
								<div class="col">
									<div class="owl-carousel owl-theme show-nav-title nav-dark mb-0" data-plugin-options="{'loop': false, 'autoplay': false,'items': 4, 'nav': true, 'dots': false, 'margin': 20, 'autoplayHoverPause': true, 'autoHeight': true}">
<%-- 										<c:forEach> --%>
											<div class="product mb-0">
												<div class="product-thumb-info border-0 mb-3">
													<div class="product-thumb-info-badges-wrapper">
														<span class="badge badge-ecommerce badge-success">NEW</span>
														<span class="badge badge-ecommerce badge-danger">${result.detail.pro_discount }% OFF</span>
													</div>
													<div class="addtocart-btn-wrapper">
														<a href="shop-cart.html" class="text-decoration-none addtocart-btn" title="Add to Cart">
															<i class="icons icon-bag"></i>
														</a>
													</div>
													<a href="ajax/shop-product-quick-view.html" class="quick-view text-uppercase font-weight-semibold text-2">
														QUICK VIEW
													</a>
													<a href="shop-product-sidebar-left.html">
														<div class="product-thumb-info-image product-thumb-info-image-effect">
															<img alt="" class="img-fluid" src="resources/img/products/product-grey-7.jpg">
																<img alt="" class="img-fluid" src="resources/img/products/product-grey-7-2.jpg">
														</div>
													</a>
												</div>
												<div class="d-flex justify-content-between">
													<div>
														<a href="#" class="d-block text-uppercase text-decoration-none text-color-default text-color-hover-primary line-height-1 text-0 mb-1">accessories</a>
														<h3 class="text-3-5 font-weight-medium font-alternative text-transform-none line-height-3 mb-0"><a href="shop-product-sidebar-right.html" class="text-color-dark text-color-hover-primary">Porto Headphone</a></h3>
													</div>
													<a href="#" class="text-decoration-none text-color-default text-color-hover-dark text-4">
														<i class="far fa-heart"></i>
													</a>
												</div>
												<div title="Rated 5 out of 5">
													<input type="text" class="d-none" value="5" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'default', 'size':'xs'}">
												</div>
												<p class="price text-5 mb-3">
													<span class="sale text-color-dark font-weight-semi-bold"><fmt:formatNumber value="${result.detail.pro_beforePrice }" type = "currency"/> </span>
													<span class="amount"><fmt:formatNumber value="${result.detail.pro_afterPrice }" type = "currency"/></span>
												</p>
											</div>
<%-- 										</c:forEach> --%>
									</div>
								</div>
							</div>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
</div>
</div>