<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

    <!-- Page Introduction Wrapper -->
    <div class="page-style-a">
        <div class="container">
            <div class="page-intro">
                <h2>상세 정보</h2>
                <ul class="bread-crumb">
                    <li class="has-separator">
                        <i class="ion ion-md-home"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="is-marked">
                        <a href="#">상세 정보</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Page Introduction Wrapper /- -->
    <!-- Single-Product-Full-Width-Page -->
    <div class="page-detail u-s-p-t-80">
        <div class="container">
            <!-- Product-Detail -->
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <!-- Product-zoom-area -->
                    <div class="zoom-area">
                        <img class="img-fluid" src="/display?fileName=/${list.attachList[0].uploadPath.replace('\\', '/')}/${list.attachList[0].uuid}_${list.attachList[0].fileName}" alt="Zoom Image" width="1600px" height="1600px">
                    </div>
                    <!-- Product-zoom-area /- -->
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <!-- Product-details -->
                    <div class="all-information-wrapper">
                        <div class="section-1-title-breadcrumb-rating">
                            <div class="product-title">
                                <h1>
                                    <a href="#">${list.item_name}</a>
                                </h1>
                            </div>
                            <ul class="bread-crumb">
                                <li class="has-separator">
                                    <a href="/">Home</a>
                                </li>
                                <li class="has-separator">
                                    <a href="#">전체</a>
                                </li>
                                <li class="is-marked">
                                    <a href="#">한식</a>
                                </li>
                            </ul>
                            <div class="product-rating">
                                <div class='star' title="4.5 out of 5 - based on 23 Reviews">
                                    <span style='width:67px'></span>
                                </div>
                                <span>(23)</span>
                            </div>
                        </div>
                        <div class="section-2-short-description u-s-p-y-14">
                            <h6 class="information-heading u-s-m-b-8">상세설명:</h6>
                            <p>${list.description}</p>
                        </div>
                        <div class="section-3-price-original-discount u-s-p-y-14">
                            <div class="price">
                                <h4>${list.item_price} 원</h4>
                            </div>
                            <div class="original-price">
                                <span>단가:</span>
                                <span>${list.item_price} 원</span>
                            </div>
                            <div class="discount-price">
                                <span>할인:</span>
                                <span>0%</span>
                                <span><img src="https://cdn-pro-web-134-253.cdn-nhncommerce.com/mychef1_godomall_com/data/skin/front/udweb_pc_20200903/img/common/btn/btn_coupon_apply.png" /></span>
                            </div>
                            <!-- <div class="total-save">
                                <span>Save:</span>
                                <span>$5</span>
                            </div> -->
                        </div>
                        <div class="section-4-sku-information u-s-p-y-14">
                            <h6 class="information-heading u-s-m-b-8">판매 정보:</h6>
                            <div class="availability">
                                <span>상태:</span>
                                <span>구매 가능</span>
                            </div>
                            <div class="left">
                                <span>재고:</span>
                                <span>${list.item_stock} 개 남음</span>
                            </div>
                        </div>
                        <div class="section-6-social-media-quantity-actions u-s-p-y-14">
                            <form action="#" class="post-form">
                                <div class="quantity-wrapper u-s-m-b-22">
                                    <span>수량:</span>
                                    <div class="quantity">
                                        <input type="text" class="quantity-text-field" value="1">
                                        <a class="plus-a" data-max="1000">&#43;</a>
                                        <a class="minus-a" data-min="1">&#45;</a>
                                    </div>
                                </div>
                                <div>
                                    <button class="button button-outline-secondary far fa-heart u-s-m-l-6"></button>
                                    <button class="button button-outline-secondary" type="submit">장바구니에 담기</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- Product-details /- -->
                </div>
            </div>
            <!-- Product-Detail /- -->
            <!-- Detail-Tabs -->
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="detail-tabs-wrapper u-s-p-t-80">
                        <div class="detail-nav-wrapper u-s-m-b-30">
                            <ul class="nav single-product-nav justify-content-center">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#description">상세설명</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#specification">기본</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#review">리뷰 (15)</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <!-- Description-Tab -->
                            <div class="tab-pane fade active show" id="description">
                                <div class="description-whole-container">
                                    <p class="desc-p u-s-m-b-26">${list.description}
                                    </p>
                                </div>
                            </div>
                            <!-- Description-Tab /- -->
                            <!-- Specifications-Tab -->
                            <div class="tab-pane fade" id="specification">
                                <div class="specification-whole-container">
                                    <div class="spec-ul u-s-m-b-50">
                                        <h4 class="spec-heading">Key Features</h4>
                                        <ul>
                                            <li>Heather Grey</li>
                                            <li>Black</li>
                                            <li>White</li>
                                        </ul>
                                    </div>
                                    <div class="u-s-m-b-50">
                                        <h4 class="spec-heading">What's in the Box?</h4>
                                        <h3 class="spec-answer">1 x hoodie</h3>
                                    </div>
                                    <div class="spec-table u-s-m-b-50">
                                        <h4 class="spec-heading">General Information</h4>
                                        <table>
                                            <tr>
                                                <td>Sku</td>
                                                <td>AY536FA08JT86NAFAMZ</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="spec-table u-s-m-b-50">
                                        <h4 class="spec-heading">Product Information</h4>
                                        <table>
                                            <tr>
                                                <td>Main Material</td>
                                                <td>Cotton</td>
                                            </tr>
                                            <tr>
                                                <td>Color</td>
                                                <td>Heather Grey, Black, White</td>
                                            </tr>
                                            <tr>
                                                <td>Sleeves</td>
                                                <td>Long Sleeve</td>
                                            </tr>
                                            <tr>
                                                <td>Top Fit</td>
                                                <td>Regular</td>
                                            </tr>
                                            <tr>
                                                <td>Print</td>
                                                <td>Not Printed</td>
                                            </tr>
                                            <tr>
                                                <td>Neck</td>
                                                <td>Round Neck</td>
                                            </tr>
                                            <tr>
                                                <td>Pieces Count</td>
                                                <td>1 piece</td>
                                            </tr>
                                            <tr>
                                                <td>Occasion</td>
                                                <td>Casual</td>
                                            </tr>
                                            <tr>
                                                <td>Shipping Weight (kg)</td>
                                                <td>0.5</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- Specifications-Tab /- -->
                            <!-- Reviews-Tab -->
                            <div class="tab-pane fade" id="review">
                                <div class="review-whole-container">
                                    <div class="row r-1 u-s-m-b-26 u-s-p-b-22">
                                        <div class="col-lg-6 col-md-6">
                                            <div class="total-score-wrapper">
                                                <h6 class="review-h6">Average Rating</h6>
                                                <div class="circle-wrapper">
                                                    <h1>4.5</h1>
                                                </div>
                                                <h6 class="review-h6">Based on 23 Reviews</h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <div class="total-star-meter">
                                                <div class="star-wrapper">
                                                    <span>5 Stars</span>
                                                    <div class="star">
                                                        <span style='width:0'></span>
                                                    </div>
                                                    <span>(0)</span>
                                                </div>
                                                <div class="star-wrapper">
                                                    <span>4 Stars</span>
                                                    <div class="star">
                                                        <span style='width:67px'></span>
                                                    </div>
                                                    <span>(23)</span>
                                                </div>
                                                <div class="star-wrapper">
                                                    <span>3 Stars</span>
                                                    <div class="star">
                                                        <span style='width:0'></span>
                                                    </div>
                                                    <span>(0)</span>
                                                </div>
                                                <div class="star-wrapper">
                                                    <span>2 Stars</span>
                                                    <div class="star">
                                                        <span style='width:0'></span>
                                                    </div>
                                                    <span>(0)</span>
                                                </div>
                                                <div class="star-wrapper">
                                                    <span>1 Star</span>
                                                    <div class="star">
                                                        <span style='width:0'></span>
                                                    </div>
                                                    <span>(0)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row r-2 u-s-m-b-26 u-s-p-b-22">
                                        <div class="col-lg-12">
                                            <div class="your-rating-wrapper">
                                                <h6 class="review-h6">Your Review is matter.</h6>
                                                <h6 class="review-h6">Have you used this product before?</h6>
                                                <div class="star-wrapper u-s-m-b-8">
                                                    <div class="star">
                                                        <span id="your-stars" style='width:0'></span>
                                                    </div>
                                                    <label for="your-rating-value"></label>
                                                    <input id="your-rating-value" type="text" class="text-field" placeholder="0.0">
                                                    <span id="star-comment"></span>
                                                </div>
                                                <form>
                                                    <label for="your-name">Name
                                                        <span class="astk"> *</span>
                                                    </label>
                                                    <input id="your-name" type="text" class="text-field" placeholder="Your Name">
                                                    <label for="your-email">Email
                                                        <span class="astk"> *</span>
                                                    </label>
                                                    <input id="your-email" type="text" class="text-field" placeholder="Your Email">
                                                    <label for="review-title">Review Title
                                                        <span class="astk"> *</span>
                                                    </label>
                                                    <input id="review-title" type="text" class="text-field" placeholder="Review Title">
                                                    <label for="review-text-area">Review
                                                        <span class="astk"> *</span>
                                                    </label>
                                                    <textarea class="text-area u-s-m-b-8" id="review-text-area" placeholder="Review"></textarea>
                                                    <button class="button button-outline-secondary">Submit Review</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Get-Reviews -->
                                    <div class="get-reviews u-s-p-b-22">
                                        <!-- Review-Options -->
                                        <div class="review-options u-s-m-b-16">
                                            <div class="review-option-heading">
                                                <h6>Reviews
                                                    <span> (15) </span>
                                                </h6>
                                            </div>
                                            <div class="review-option-box">
                                                <div class="select-box-wrapper">
                                                    <label class="sr-only" for="review-sort">Review Sorter</label>
                                                    <select class="select-box" id="review-sort">
                                                        <option value="">Sort by: Best Rating</option>
                                                        <option value="">Sort by: Worst Rating</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Review-Options /- -->
                                        <!-- All-Reviews -->
                                        <div class="reviewers">
                                            <div class="review-data">
                                                <div class="reviewer-name-and-date">
                                                    <h6 class="reviewer-name">John</h6>
                                                    <h6 class="review-posted-date">10 May 2018</h6>
                                                </div>
                                                <div class="reviewer-stars-title-body">
                                                    <div class="reviewer-stars">
                                                        <div class="star">
                                                            <span style='width:67px'></span>
                                                        </div>
                                                        <span class="review-title">Good!</span>
                                                    </div>
                                                    <p class="review-body">
                                                        Good Quality...!
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="review-data">
                                                <div class="reviewer-name-and-date">
                                                    <h6 class="reviewer-name">Doe</h6>
                                                    <h6 class="review-posted-date">10 June 2018</h6>
                                                </div>
                                                <div class="reviewer-stars-title-body">
                                                    <div class="reviewer-stars">
                                                        <div class="star">
                                                            <span style='width:67px'></span>
                                                        </div>
                                                        <span class="review-title">Well done!</span>
                                                    </div>
                                                    <p class="review-body">
                                                        Cotton is good.
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="review-data">
                                                <div class="reviewer-name-and-date">
                                                    <h6 class="reviewer-name">Tim</h6>
                                                    <h6 class="review-posted-date">10 July 2018</h6>
                                                </div>
                                                <div class="reviewer-stars-title-body">
                                                    <div class="reviewer-stars">
                                                        <div class="star">
                                                            <span style='width:67px'></span>
                                                        </div>
                                                        <span class="review-title">Well done!</span>
                                                    </div>
                                                    <p class="review-body">
                                                        Excellent condition
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="review-data">
                                                <div class="reviewer-name-and-date">
                                                    <h6 class="reviewer-name">Johnny</h6>
                                                    <h6 class="review-posted-date">10 March 2018</h6>
                                                </div>
                                                <div class="reviewer-stars-title-body">
                                                    <div class="reviewer-stars">
                                                        <div class="star">
                                                            <span style='width:67px'></span>
                                                        </div>
                                                        <span class="review-title">Bright!</span>
                                                    </div>
                                                    <p class="review-body">
                                                        Cotton
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="review-data">
                                                <div class="reviewer-name-and-date">
                                                    <h6 class="reviewer-name">Alexia C. Marshall</h6>
                                                    <h6 class="review-posted-date">12 May 2018</h6>
                                                </div>
                                                <div class="reviewer-stars-title-body">
                                                    <div class="reviewer-stars">
                                                        <div class="star">
                                                            <span style='width:67px'></span>
                                                        </div>
                                                        <span class="review-title">Well done!</span>
                                                    </div>
                                                    <p class="review-body">
                                                        Good polyester Cotton
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- All-Reviews /- -->
                                        <!-- Pagination-Review -->
                                        <div class="pagination-review-area">
                                            <div class="pagination-review-number">
                                                <ul>
                                                    <li style="display: none">
                                                        <a href="single-product.html" title="Previous">
                                                            <i class="fas fa-angle-left"></i>
                                                        </a>
                                                    </li>
                                                    <li class="active">
                                                        <a href="single-product.html">1</a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product.html">2</a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product.html">3</a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product.html">...</a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product.html">10</a>
                                                    </li>
                                                    <li>
                                                        <a href="single-product.html" title="Next">
                                                            <i class="fas fa-angle-right"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- Pagination-Review /- -->
                                    </div>
                                    <!-- Get-Reviews /- -->
                                </div>
                            </div>
                            <!-- Reviews-Tab /- -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Detail-Tabs /- -->
        </div>
    </div>
    <!-- Single-Product-Full-Width-Page /- -->

    <!-- Dummy Selectbox -->
    <div class="select-dummy-wrapper">
        <select id="compute-select">
            <option id="compute-option">All</option>
        </select>
    </div>
    <!-- Dummy Selectbox /- -->
    <!-- Responsive-Search -->
    <div class="responsive-search-wrapper">
        <button type="button" class="button ion ion-md-close" id="responsive-search-close-button"></button>
        <div class="responsive-search-container">
            <div class="container">
                <p>Start typing and press Enter to search</p>
                <form class="responsive-search-form">
                    <label class="sr-only" for="search-text">Search</label>
                    <input id="search-text" type="text" class="responsive-search-field" placeholder="PLEASE SEARCH">
                    <i class="fas fa-search"></i>
                </form>
            </div>
        </div>
    </div>
    <!-- Responsive-Search /- -->
    <!-- Quick-view-Modal -->
    <div id="quick-view" class="modal fade">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="button dismiss-button ion ion-ios-close" data-dismiss="modal"></button>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <!-- Product-details -->
                            <div class="all-information-wrapper">
                                <div class="section-1-price-original-discount u-s-p-y-14">
                                    <div class="original-price">
                                        <span>단가:</span>
                                        <span class="priceData"></span>
                                    </div>
                                    <div class="total-price">
                                        <span>총액:</span>
                                        <span class="totalData"></span>
                                    </div>
                                    <div class="amount">
                                        <span>수량:</span>
                                        <span class="amountData"></span>
                                    </div>
                                </div>

                                <div class="section-6-social-media-quantity-actions u-s-p-y-14">
                                    <form action="/cart/register" method="post" class="post-form">
                                        <div class="quantity-wrapper u-s-m-b-22">
                                            <span>Quantity:</span>
                                            <div class="quantity">
                                                <input type="text" class="quantity-text-field" value="1">
                                                <a class="plus-a" data-max="1000">&#43;</a>
                                                <a class="minus-a" data-min="1">&#45;</a>
                                            </div>
                                        </div>
                                        <div>
                                            <button class="button button-outline-secondary" type="submit">Add to cart</button>
                                            <button class="button button-outline-secondary far fa-heart u-s-m-l-6"></button>
                                            <button class="button button-outline-secondary far fa-envelope u-s-m-l-6"></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- Product-details /- -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick-view-Modal /- -->
</div>
<!-- app /- -->
<!--[if lte IE 9]>
<div class="app-issue">
    <div class="vertical-center">
        <div class="text-center">
            <h1>You are using an outdated browser.</h1>
            <span>This web app is not compatible with following browser. Please upgrade your browser to improve your security and experience.</span>
        </div>
    </div>
</div>
<style> #app {
    display: none;
} </style>
<![endif]-->
<!-- NoScript -->
<noscript>
    <div class="app-issue">
        <div class="vertical-center">
            <div class="text-center">
                <h1>JavaScript is disabled in your browser.</h1>
                <span>Please enable JavaScript in your browser or upgrade to a JavaScript-capable browser to register for Groover.</span>
            </div>
        </div>
    </div>
    <style>
    #app {
        display: none;
    }
    </style>
</noscript>
<!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
<script>
window.ga = function() {
    ga.q.push(arguments)
};
ga.q = [];
ga.l = +new Date;
ga('create', 'UA-XXXXX-Y', 'auto');
ga('send', 'pageview')
</script>

<%@ include file="../include/footer.jsp" %>