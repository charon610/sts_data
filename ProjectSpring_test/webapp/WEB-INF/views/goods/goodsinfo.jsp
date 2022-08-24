<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<section class="image-head-wrapper"
	style="background-image: url('/images/campingboard.jpg'); background-repeat: round; width:100%; height: 500px;">
	<div class="inner-wrapper">
		<h1 style="font-size: 35px;">상품 설명</h1>
	</div>
</section>
<div class="clearfix"></div>
<div style="padding-bottom: 50px; padding-top: 50px; background-color: #e9e9e9;">
<table>
	<tr class="form-inline">
    	<td class="form-control" style="width: 20%; text-align: center;">상품명</td>
    	<td colspan="3" style="width: 80%;" class="form-control">${goodsInfo.goods_name}</td>
  	</tr>
  	<tr>
	    <td class="form-control" style="text-align: center;">이미지</td>
	    <td colspan="3" class="form-control"
	      style="font-size: 15px; width: 800px; height: 800px; text-align:center"><br>
	      <c:url value="/displayImg" var="url">
    	  <c:param name="filename" value="${list[0].uploadpath}/${list[0].img_name}_${list[0].filename}" />
    	  </c:url>
	      <img src="${url}"
	      style="width: 80%; height: 80%;" onerror="this.src='/images/none.png'" alt="My Image"><br><br>${ pboard.cont}
	    </td>
  	</tr>
	<tr class="form-inline">
    	<td class="form-control" style="width: 20%; text-align: center;">상품 설명</td>
    	<td colspan="3" style="width: 80%;" class="form-control">${goodsInfo.goods_info}</td>
  	</tr>
	<tr>
		<td colspan="2">
		<a href="#"><input type="button" class="btn btn-default" value="구매하기" id="purchase" /></a>
		<a href="/shopping"><input type="button" class="btn btn-default" value="돌아가기" id="return" /></a>
		</td>
	</tr>
</table>
</div>
<style>
	a {
		text-decoration: none;
		color: black;
	}
	a:hover {
		text-decoration: none;
		color: red;
	}
	table {
		width: 800px;
		margin: 0 auto;
	}
	table,
	td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	td {
		padding: 10px;
	}
</style>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>