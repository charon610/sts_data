<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<link rel="stylesheet" href="css/logout.css">
	<link rel="stylesheet" href="css/nav-footer.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<meta name="viewport" content="width=device-width">
<title>로그아웃 페이지</title>
</head>
<body>
  <div id = "wrap">
    <form method="GET" action="logout.do" id="logoutBox">
      <h2 class="headText daehan">Coffee & Lavita</h2>
      <h3 class="headText2">로그아웃을 하시겠습니까?</h3>
      <p class="subText">로그아웃을 통해 메인페이지로 돌아가기를 원하시면 아래 [확인] 버튼을 선택하여 주십시오.</p>
      <div class="buttonBtn">
        <button tuyp ="submit" class="ok">확인</button>
        <button><a href="#" onclick="history.go(-1)"> 취소 </a></button>
      </div>
      
    </form>
  </div>
</body>
</html>