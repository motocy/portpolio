<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
.container{
	padding-top:10px;}
table{
	margin-left: auto;
	margin-right: auto;}
th, td {
	text-align: center;}
.navi_bar_area #admin4:visited{
    color:black;
    font-weight: bold;}
</style>
</head>
<body>
<!-- Page Introduction Wrapper -->
  <div class="page-style-a">
      <div class="container">
          <div class="page-intro">
              <h2>주문 리스트</h2>
              <ul class="bread-crumb">
                  <li class="has-separator">
                      <i class="ion ion-md-home"></i>
                      <a href="/">Home</a>
                  </li>
                  <li class="is-marked">
                      <a href="#">구매 관리</a>
                      <font size:3px></font>
                  </li>
              </ul>
          </div>
      </div>
  </div>
<!-- Page Introduction Wrapper /- -->
<div id="app">
<div class="container">
	<table  class="table table-striped" id="buytable">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>결제일</th>
		<th>상품</th>
		<th>수량</th>
		<th>가격</th>
		<th>상태</th>
	</tr>
	<c:forEach var="list" items="${buyList}">
		<tr>
			<td>${list.buy_no}</td>
			<td>${list.user_id}</td>
			<td><fmt:formatDate value="${list.buy_date}" pattern="yyyy-MM-dd" /></td>
			<td><c:forEach var="add" items="${bblist}" varStatus="stat">
				${add.item_name}<br>
			</c:forEach></td>
			<td><c:forEach var="add" items="${bblist}" varStatus="stat">
				${add.amount}<br>
			</c:forEach></td>
			<td><c:forEach var="add" items="${bblist}" varStatus="stat">
				${add.buy_price}<br>
			</c:forEach></td>
			<td>${list.buy_status}</td>
		</tr>
	</c:forEach>
	</table>
</div>
</div>
<script>

$(document).ready(function(e){
	$(".button-outline-secondary").each(function(idx ,data) {
		$(this).click(function(e){
			var text =$("tr td#first").eq(idx).text()
			var status =$("tr #buy_status").eq(idx).val()
			console.log("눌렸다",idx, text, status)
			// AJAX (jQuery) code
			$.ajax({
			  url: "/buy/order",
			  type: "POST",
			  data:{buy_status : status, buy_no : text},
			  dataType:"JSON",
			  success: function(response) {
				  alert("주문상태 수정완료");
			    console.log("성공" + response);
			  },
			  error: function(xhr, status, error) {
			    console.error(error);
			  }
			}); 
		})
	})
})
</script>

</body>
</html>
<%@ include file="../include/footer.jsp" %>