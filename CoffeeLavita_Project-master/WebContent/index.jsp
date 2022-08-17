<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/nav-footer.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<meta name="viewport" content="width=device-width">
	<title>COFFEE & LAVITA main</title>
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
					<c:if test="${member.mem_id == 'test10'}">
							<p><a href="master" class="memberName">${member.name}</a>�� �ȳ��ϼ���.</p>
					</c:if>
					<c:if test="${member.mem_id != 'test10'}">
						<p><span class="memberName">${member.name}</span>�� �ȳ��ϼ���.</p>
					</c:if>
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
				  <a href="#">MENE</a>
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
        <div class="content-main">
			
          <div class="mainsale">
		  	<img src="image/mainsale-icon.png" alt="���� �˶� ������" class="mainsale-icon">
            <div class="mainsale-inner">
				<div class="mainsale-centerbox">
					<p>COFFEE & LAVITA</p>
					<img src="images/clock.png" alt="�ð� ������">
					<div class="sale-text1">TIME SALE</div>
					<div class="sale-text2">
						<p class="daehan">�����ε��� ���� ���� ���� �ð� �����ϴ� Ŀ�� ����!</p>
					</div>
					<ul class="sale-text3">
						<li class="simple">���� ��ٽð� ����: 07:00 ~ 09:00</li>
						<li class="simple">���� ���ɽð� ����: 12:00 ~ 14:00</li>
						<li class="daehan">�ູ�� ũ�������� COFFEE & LAVITA�� �Բ��ؿ�.</li>
					</ul>
				</div>
            </div>
          </div>

          <div class="mainseason">
            <div class="mainseason-inner">
              <a href="#">
				<img src="image/season2.png" alt="�����ǰ" class="mainseson-img">
              </a>
				<img src="images/marry.png" alt="ũ�������� �ؽ�Ʈ" class="main-marry">
				<p class="daehan">
					<span>COFFEE & LAVITA</span>�� �Բ��ϴ�<br>
					2019 <span class="mainchristmas">ũ��������</span><br>
					�پ��� �޴��� ����������.
				</p>
            </div>
          </div>

		<div class="news-event">
			<div id="news-content">
				<p>��������</p>
				<div id="rank">
					<ul>
						<ol>
							<li><a href="#">�� ����/Ȩ������ ������ ���� �ȳ�</a></li>
							<li><a href="#">���� ���Ÿ ���� ���� �ȳ�</a></li>
							<li><a href="#">Ȩ������ �̿��� �� ���Ÿ �̿��� ���� �ȳ�</a></li>
							<li><a href="#">���Ÿ ī�� �̿��� ���� �ȳ�</a></li>
							<li><a href="#">�� ����/Ȩ������ ������ ���� �ȳ�</a></li>
							<li><a href="#">���Ÿ ī�� �̿��� ���� �ȳ�</a></li>
							<li><a href="#">�� ����/Ȩ������ ������ �ߴܾȳ�</a></li>
							<li><a href="#">��������ó����� ����� ��ħ ���� �ȳ�</a></li>
							<li><a href="#">�� ����/Ȩ������ ������ �ߴܾȳ�</a></li>
							<li><a href="#">Ȧ����ũ ���� ��� ���� �ȳ�</a></li>
						</ol>
					</ul>
            </div>
        </div>

		<button class="event-accordion2">�̺�Ʈ</button>
		<div class="event-panel">
			 <div id="slider01" class="main-event-content">
				<ul class="gallery-list">
					<li>
						<a href="#none">
							<img src="image/main-event1.png" alt="���� �̺�Ʈ �̹���" class="event-banner">
						</a>
					</li>
					<li>
						<a href="#none">
							<img src="image/main-event2.png" alt="�����ǰ ��� �̹���"  class="event-banner">
						</a>
					</li>
					<li>
						<a href="#none">
							<img src="image/main-event3.png" alt="����Ʈ ��ǰ ��� �̹���"  class="event-banner">
						</a>
					</li>
				</ul>
				<div class="ctrl-box">
					<a href="#none" class="ctrl-box-active"><i class="bullet">1</i></a>
					<a href="#none"><i class="bullet">2</i></a>
					<a href="#none"><i class="bullet">3</i></a>
					<button type="button" class="btn-ctrl auto">STOP</button>
				</div>
				<a class="btn-prev" href="#none">�� prev</a>
				<a class="btn-next" href="#none">next ��</a>
			</div>
		</div>
	</div>

          <div class="mainbest">
            <div class="mainbest-inner">
				<a href="coffee-menu.jsp">
					<img src="image/mainbest2.png" alt="����Ʈ ��ǰ �̹���" class="best-product">
				</a>
				<h2><img src="images/main-text1.png" alt="COFFEE&LAVITA�� �پ��� �޴��� ��ܺ�����." class="best-text"></h2>
				<p class="best-box"><a href="coffee-menu.jsp">�ڼ��� ����</a></p>
            </div>
          </div>

          <div class="store-sns">
		  	<h2><img src="images/main-text2.png" alt="����� ��Ȱ�ӿ� �ִ� Ŀ�ǿ� ���Ÿ" class="center-text"></h2>
            <div class="store-sns-inner">

              <div class="store-introduce sns-s">
			  	<a href="#"><img src ="image/mainstore.png" alt="�Ｚ������"></a>
              </div>
              <div class="store-new sns-s">
			  	<a href="#"><img src ="image/mainnewstore.png" alt="���� ������� �űԸ���"></a>
              </div>
              <div class="sns-insta">
			  	<a href="#"><img src ="image/maininsta.png" alt="�ν�Ÿ�׷� ����"></a>
              </div>
			  <div class="sns-blog">
			  	<a href="#"><img src ="image/mainblog.png" alt="���̹� �ı�"></a>
              </div>
				  <ul class="sns-icon">
					<li><a href="https://www.facebook.com/"><img src="images/facebook.png" alt="���̽���"></a></li>
					<li><a href="https://www.instagram.com "><img src="images/insta.png" alt="�ν�Ÿ�׷�"></a></li>
					<li><a href="https://www.kakaocorp.com"><img src="images/kakao.png" alt="īī����"></a></li>
					<li><a href="https://section.blog.naver.com"><img src="images/blog.png" alt="���̹���α�"></a></li>
				</ul>
            </div>	
          </div>

          <div class="main-partnership">
            <div class="main-partnership-inner">
				<a href="#"><p class="daehan">�����ϱ�</p></a>
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
		$(function() {
			var count = $('#rank li').length;
			var height = $('#rank li').height();

		 function step(index) {
        $('#rank ol').delay(2000).animate({
           top: -height * index,
		   }, 500, function() {
		  step((index + 1) % count);
		   });
		    }
		  step(1);
		});

	 /*************************************/
	var acc = document.getElementsByClassName("event-accordion2");
	var i;

	for (i = 0; i < acc.length; i++) {
	 acc[i].addEventListener("click", function() {
	   this.classList.toggle("active");
	  var panel = this.nextElementSibling;
	 if (panel.style.maxHeight) {
	    panel.style.maxHeight = null;
	  } else {
	    panel.style.maxHeight = panel.scrollHeight + "px";
	  } 
	 });
	}
	/*******************************************/
	$(document).ready(function(){
	$(".alert").click(function(){
		alert("�α����� �ʿ��� �����Դϴ�.")
	})
})

</script>
</body>
</html>