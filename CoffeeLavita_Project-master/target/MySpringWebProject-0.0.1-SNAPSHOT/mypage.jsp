<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/mypage.css">
	<link rel="stylesheet" href="css/nav-footer.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 <script type="text/javascript" src="js/main.js"></script>
	<meta name="viewport" content="width=device-width">
    <title></title>
  </head>
  <body>
    <div id = "wrap">
      <div id = "header">
        <div class = "header-inner">
          <h1 class ="logo">
            <a href="index.jsp" title="���Ÿ ���� �ΰ�">���Ÿ �ΰ�</a>
          </h1>

          <ul class="header-text">
            <li class="myname">
				<c:if test="${member != null}">
					<p><span class="memberName">${member.name}</span>�� �ȳ��ϼ���.</p>
				</c:if>
			</li>
            <li><a href="#">�˸�</a></li>
            <li>
            	<c:if test="${member == null}"> <a href="log.jsp">�α���</a> </c:if>
            	<c:if test="${member != null}"><a href="logout.jsp">�α׾ƿ�</a></c:if>
            </li>
            <li>
            	<c:if test="${member == null}"><a href="" class="alert">����������</a></c:if>
            	<c:if test="${member != null}"><a href="mypage.jsp">����������</a></c:if>
            <li><a href="list">������</a></li>
            <li>
                <select class="length">
                  <option selected>KOREA</option>
                  <option>English</option>
                  <option>China</option>
                  <option>Japan</option>
              </select>
            </li>
          </ul>
		 <div class="last-gnb">
			<a href="#" class="two_bar"></a>
			<a href="#" class="two_bar"></a>
			</div>
		 </div>
		  
		  <div id = "nav">
			<!--<div class = "nav-inner">-->
			  <ul class="nav-bar">
				<li>
				  <a href="#">COFFEE & LAVITA</a>
				  <ul class="nav-subbar">
					<li><a href="#">LAVITA �Ұ�</a></li>
					<li><a href="#">LAVITA BI</a></li>
					<li><a href="#">LAVITA ä��</a></li>
					<li><a href="#">LAVITA Ŀ��</a></li>
				  </ul>

				</li>

				<li>
				  <a href="#">MENU</a>
				   <ul class="nav-subbar">
					 <li><a href="coffee-menu.jsp">Ŀ��</a></li>
					 <li><a href="#">����&��</a></li>
					 <li><a href="#">����Ʈ</a></li>
					 <li><a href="#">��ǰ</a></li>
					 <li><a href="#">ī��</a></li>
					 <li><a href="#">���缺��ǥ</a></li>
				   </ul>
				</li>

				<li>
				  <a href="#">EVENT</a>
				   <ul class="nav-subbar">
					 <li><a href="#">�������� �̺�Ʈ</a></li>
					 <li><a href="#">����� �̺�Ʈ</a></li>
					 <li><a href="#">��÷�� ��ǥ</a></li>
				   </ul>
				</li>

				<li>
				  <a href="#">CARD</a>
				   <ul class="nav-subbar">
					 <li><a href="#">LAVITA ī��</a></li>
					 <li><a href="#">��� �� ����</a></li>
					 <li><a href="#">���� ���� ī��</a></li>
				   </ul>
				</li>

				<li>
				  <a href="#">STORE</a>
				   <ul class="nav-subbar">
					 <li><a href="#">���� ã��</a></li>
					 <li><a href="#">Ư�� ����</a></li>
					 <li><a href="#">�ű� ����</a></li>
					 <li><a href="#">���� ����</a></li>
				   </ul>
				</li>

				<li>
				  <a href="#">��������</a>
				   <ul class="nav-subbar">
					 <li><a href="#">��������</a></li>
					 <li><a href="#">���ҽ�</a></li>
				   </ul>
				</li>
			  </ul>
			</div>
		  </div>
      </div>

      <div id = "content">
	  	<div class="content-mypage">
			<div class="background-top">
				<h2>My Page</h2>
			</div>
			<div class="mypage-bottom">
				<div class="location"><a href="main.jsp">����></a><a href="mypage.jsp">����������</a></div>
				<div class="mypage-left">
					<div class="mypage-left-fristbox">
					
					<c:if test="${member != null}">
						<h3>${member.name}���� LAVITA ����Ʈ�� 920P�Դϴ�.</h3>
					</c:if>
					</div>
					
					<div class="mypage-secondbox">
						<h4 class="daehan"><img src="images/leaf.png" alt="Ŀ���� �̹���" class="mypage-leaf">�ֱ� ������ LAVITA ����Ʈ�� 340P�Դϴ�.</h4>
						<div class="mypage-secondbox-inner">
							<button type="button"><a href="#">��Ȯ��</a></button>
							<p class="mypage-secondbox-inner-text">���� : 12/24 ��� ���� : COFFEE & LAVITA ���������� ���� ����Ʈ : 80P ����</p>

							<button type="button"><a href="#">��Ȯ��</a></button>
							<p class="mypage-secondbox-inner-text">���� : 12/18 ��� ���� : COFFEE & LAVITA ���� ��������� ���� ����Ʈ : 160P ����</p>
								
							<button type="button"><a href="#">��Ȯ��</a></button>
							<p class="mypage-secondbox-inner-text">���� : 12/16 ��� ���� : COFFEE & LAVITA ���� ��������� ���� ����Ʈ : 100P ����</p>
						</div>
					</div>

					<div class="mypage-secondbox">
						<h4 class="daehan"><img src="images/leaf.png" alt="Ŀ���� �̹���" class="mypage-leaf">�ֱ� ����� LAVITA ����Ʈ�� 1900P�Դϴ�.</h4>
						<div class="mypage-secondbox-inner">
							<button type="button"><a href="#">��Ȯ��</a></button>
							<p class="mypage-secondbox-inner-text">���� : 12/24 ��� ���� : COFFEE & LAVITA ���������� ��� ����Ʈ : 500P ���</p>

							<button type="button"><a href="#">��Ȯ��</a></button>
							<p class="mypage-secondbox-inner-text">���� : 12/18 ��� ���� : COFFEE & LAVITA ���� ��������� ��� ����Ʈ : 1000P ���</p>

							<button type="button"><a href="#">��Ȯ��</a></button>
							<p class="mypage-secondbox-inner-text">���� : 12/16 ��� ���� : COFFEE & LAVITA ���� ��������� ��� ����Ʈ : 400P ���</p>
						</div>
					</div>

					<div class="mypage-secondbox">
						<h4 class="daehan"><img src="images/leaf.png" alt="Ŀ���� �̹���" class="mypage-leaf">��� ������ ������ 1�� �ֽ��ϴ�.</h4>
						<div class="mypage-secondbox-inner">

							<button type="button"><a href="#">��Ȯ��</a></button>
							<p class="mypage-secondbox-inner-text">COFFEE & LAVITA ����� ���� ���� ���� 
							&nbsp<span>��� ���� : 2019.12.01 ~ 2020.12.01</span></p>
						</div>
					</div>

					<div class="mypage-thirdbox">
						<h4>�̸�ȣ���� ���� ��ܸ��ô� �޴�</h4>
						<div class="mypage-thirdbox-inner">

							<div class="mypage-thirdbox-coffeebox">
								<h5 class="mypage-best">1��</h5>
								<a href="#"><img src="image/mypage-Americano.png" alt="���������� ���� ��ܸԴ� Ŀ��" class="mypage-thirdbox-coffee"></a>
								<p><a href="#">�Ƹ޸�ī�� (ICE)</a></p>
							</div>

							<div class="mypage-thirdbox-coffeebox">
								<h5 class="mypage-best">2��</h5>
								<a href="#"><img src="image/mypage-Green Tea Latte.png" alt="���������� ���� ��ܸԴ� Ŀ��" class="mypage-thirdbox-coffee"></a>
								<p><a href="#">�׸�Ƽ�� (HOT)</a></p>
							</div>

							<div class="mypage-thirdbox-coffeebox">
								<h5 class="mypage-best">3��</h5>
								<a href="#"><img src="image/mypage-Java Chip Frappuccino.png" alt="���������� ���� ��ܸԴ� Ŀ��" class="mypage-thirdbox-coffee"></a>
								<p><a href="#">�ڹ�Ĩ����Ǫġ��</a></p>
							</div>
						</div>
					</div>

				</div>

				<div class="side-right">
					<ul class="side-right-inner">
						<li><a href="#">My LAVITA ī��</a></li>
						<li><a href="#">My Giftī��</a></li>
						<li><a href="#">My ����</a></li>
						<li><a href="#">My Ķ����</a></li>
						<li><a href="#">My �̺�Ʈ</a></li>
						<li><a href="#">My �޴�</a></li>
						<li><a href="#">My ���ǼҸ�</a></li>
						<li><a href="#">������������</a>
							<ul class="mypage-subbar">
								<li><a href="#">�������� Ȯ�� �� ����</a></li>
								<li><a href="#">��й�ȣ ����</a></li>
								<li><a href="#">ȸ��Ż��</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	  </div>
        
      <div id = "footer1">
        <div class = "footer1-inner">
			<ul>
				<li><a href="#">�������� ó�� ��ħ</a></li>
				<li><a href="#">��������ó�����������ħ</a></li>
				<li><a href="#">Ȩ������ �̿���</a></li>
				<li><a href="#">�����濵</a></li>
			</ul>
		 </div>
      </div>

      <div id = "footer2">
        <div class="footer2-inner">
          <p class="footer-lavita">COFFEE & LAVITA</p>
          <P>(��)COFFEE & LAVITA ��ǥ�̻�: �̸�ȣ ����ڵ�Ϲ�ȣ 000-00-00000 ����Ǹž��Ű� �� 2019-���ﰭ��-00560
          <br>����� ������ ������� 99�� 7 ������ 02-000-0000 (09:00 ~ 18:00) Email: cl@lavitako.combako.com
          <br>copyright�� 2019.COFFEE & LAVITA
		</div>
      </div>

    </div>
	
	<script>
	$(document).ready(function(){
		$(".alert").click(function(){
			alert("�α����� �ʿ��� �����Դϴ�.")
		})
	})
	</script>

  </body>
</html>