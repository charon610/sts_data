<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Master page</title>
<style>
	*{padding:0; margin:0;}
	a{text-decoration: none;}
	ul,ol{list-style: none;}
	h1{text-align: center; padding:20px 0;}
	tr:nth-of-type(1){height:40px;}
	tr:nth-of-type(even){background:#f2f2f2;}
	table{border-spacing: 0;}
	td{padding:8px 0 8px 20px;}
	.back{
		display: block;
		width:200px;
		height: 50px;
		margin:30px auto 0;
		border: 2px solid #d9d9d9;
	}
	.remove_btn{text-align:center; }
	.remove_btn a{font-weight:bold; color:#666;display: block;width:100%;  padding:6% 0;}
	.remove_btn>button{width:80%;}
	.back a{display: block; width:100%; line-height:50px;color:#666; font-weight: bold;}
</style>
</head>
<body>
	<div id="root">
		<header>
			<h1>마스터 페이지</h1>
		</header>
		<hr />
						
		<section id="container">
			<form role="form" method="post" action="deleteUser">
				<table style="width:60%; margin:0 auto;">
					<colgroup>
						<col style="width: 30%;">
						<col style="width: 30%;">
						<col style="width: 30%;">
						<col style="width: 10%;">
					</colgroup>
						<tr class="tableHead"><th>Name</th><th>ID</th><th>Password</th><th>Remove</th>
										
						<c:forEach items="${master}" var = "master">
							<tr class="bottom-line">
								<td><c:out value="${master.name}" /></td>
								<td><c:out value="${master.mem_id}" /></td>
								<td class="left"><c:out value="${master.mem_pw}" /></td>
								<td class="remove_btn"><button type="submit"><a href="masterView?mem_id=${master.mem_id}">상세보기</a></button></td>									 
							</tr>
						</c:forEach>			
					</table>
				</form>
			</section>
			<hr />
			<button class="back"><a href="listMaster"> 관리자 게시판으로 입장하기 </a></button>
			<button class="back"><a href="index.jsp"> 메인페이지로 돌아가기 </a></button>
		</div>
		
		<script type="text/javascript">

// 			$(document).ready(function(){
// 				$(".remove_btn").click(function(){
// 					var formObj = $("form");
					
// 					formObj.attr("action","deleteUser")
// 					formObj.submit();
// 				})
// 			})
		
		</script>
</body>
</html>