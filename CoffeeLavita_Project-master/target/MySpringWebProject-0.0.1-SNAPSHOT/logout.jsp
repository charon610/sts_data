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
<title>�α׾ƿ� ������</title>
</head>
<body>
  <div id = "wrap">
    <form method="GET" action="logout.do" id="logoutBox">
      <h2 class="headText daehan">Coffee & Lavita</h2>
      <h3 class="headText2">�α׾ƿ��� �Ͻðڽ��ϱ�?</h3>
      <p class="subText">�α׾ƿ��� ���� ������������ ���ư��⸦ ���Ͻø� �Ʒ� [Ȯ��] ��ư�� �����Ͽ� �ֽʽÿ�.</p>
      <div class="buttonBtn">
        <button tuyp ="submit" class="ok">Ȯ��</button>
        <button><a href="#" onclick="history.go(-1)"> ��� </a></button>
      </div>
      
    </form>
  </div>
</body>
</html>