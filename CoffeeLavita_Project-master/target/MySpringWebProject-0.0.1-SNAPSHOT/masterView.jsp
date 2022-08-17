<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	*{padding:0; margin:0;}
	a{text-decoration: none;}
	ul,ol{list-style: none;}
	h1{text-align: center; padding:20px 0;}
	table{border-spacing: 0; 
		width:60%;
		margin:30px auto 0;
		border:1px solid #d9d9d9;
		border-bottom:none;
	}
	td input{
		width:60%;
		padding:5px 20px;
		border:1px solid #d9d9d9;
	}
	label{
        width:30%;
        display: inline-block;
        padding:20px 0 20px 20px;
        font-size: 16px;
        font-weight: bold;
        background: #f4f4f2;
        box-sizing: border-box;
        margin-right:20px;
    }
    td{border-bottom:1px solid #d9d9d9;}
	.btnBox{
		width:60%;
		margin:30px auto;
		text-align: center;
	}
	.btnBox button{width:100px; height:35px; font-weight: bold; color:#666;}
	.back{
		display: block;
		width:200px;
		height: 50px;
		margin:30px auto 0;
		border: 2px solid #d9d9d9;
	}
	.back a{display: block; width:100%; line-height:50px;color:#666; font-weight: bold;}
</style>
</head>
<body>
	<div id="root">
		<header>
			<h1>사용자 정보 수정</h1>
		</header>
		<hr />

		<section id="container">
			<form role="form" method="post" name="masterForm">
				<table>
					<tbody>
						<tr>
							<td><label for="name">이름</label> <input type="text" name="name" value="${masterView.name}"></td>
						</tr>
						<tr>
							<td><label for="mem_id">아이디</label><input type="text" name="mem_id" readonly value="${masterView.mem_id}"></td>
						</tr>
						<tr>
							<td><label for="mem_pw">비밀번호</label><input type="password" name="mem_pw" value="${masterView.mem_pw}"></td>
						</tr>
					</tbody>
				</table>
				<div class="btnBox">
					<button type="submit" class="update_btn">수정</button>
					<button type="submit" class="delete_btn">삭제</button>
				</div>
			</form>
		</section>
		<hr />
		<button class="back">
			<a href="#" onclick="history.go(-1)"> 목록으로 돌아가기 </a>
		</button>
	</div>
	<script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[name = 'masterForm']");
		//수정
		$(".update_btn").on("click", function(){
			formObj.attr("action", "updateViewUser");
			formObj.attr("method","post");
			alert("회원 정보가 수정되었습니다.");
			formObj.submit();
		})
		
		//삭제
		$(".delete_btn").on("click",function(){
			formObj.attr("action", "deleteUser");
			formObj.attr("method", "post");
			alert("회원 정보가 삭제되었습니다.");
			formObj.submit();
			
		})
	})
		
		
	</script>
</body>
</html>