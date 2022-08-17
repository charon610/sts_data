<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/coffee-menu.css">
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
	  	<div class="content-coffee">
			<div class="background-top">
				<div class="background-top-text"><!--display:table-cell-->
					<h2>COFFEE<br>
						Ŀ��</h2>
				</div>
			</div>

			<div class="coffee-bottom"><!--height�� ���ַ���?-->
				<div class="location"><a href="main.jsp">����></a><a href="#">MENU></a><a href="coffee-menu.jsp">Ŀ��</a></div>
					<h3>��õ ��ǰ</h3>

					<div class="coffee-firstbox">
						<ul class="coffeemenu-image">
							<li><a href="#"><img src="image/menu-toffee nut latte.png" class="coffeemenu-img" alt="���ǳ� �� �̹���"><p class="daehan">���ǳ� ��</p></a>
								<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

							<li><a href="#"><img src="image/menu-Holly Day Mint Chocolate.png" class="coffeemenu-img" alt="Ȧ������ ��Ʈ ���ݸ� �̹���"><p class="daehan">Ȧ������ ��Ʈ ���ݸ�</p></a>
								<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

							<li><a href="#"><img src="image/menu-Americano.png" class="coffeemenu-img" alt="�Ƹ޸�ī�� �̹���"><p class="daehan">�Ƹ޸�ī��</p></a>
								<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

							<li><a href="#"><img src="image/menu-Grapefruit Sorbet Blendy.png" class="coffeemenu-img" alt="�ڸ� �Ź� ���� �̹���"><p class="daehan">�ڸ� �Ź� ����</p></a></li>
						</ul>
					</div>
					
					<div class="coffee-secondbox">
						<h4>ī�װ�</h4>
						<div class="bar"></div>
						
						<ul id="coffee-tabs">
							<li><a href="#" title="coffeemenu-tab1">��ü ��ǰ</a></li>
							<li><a href="#" title="coffeemenu-tab2">�ݵ��� Ŀ��</a></li>
							<li><a href="#" title="coffeemenu-tab3">���� Ŀ��</a></li>
							<li><a href="#" title="coffeemenu-tab4">����������</a></li>
							<li><a href="#" title="coffeemenu-tab5">����Ǫġ��</a></li>
							<li><a href="#" title="coffeemenu-tab6">����</a></li>
						</ul>


						<div id="coffee-tab-content">

							<div id="coffeemenu-tab1">
								<h5>�ݵ�η� Ŀ��</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-Nitro-vanilla-cream.png" class="coffeemenu-img" alt="����Ʈ�� �ٴҶ� ũ�� �̹���"><p class="daehan">����Ʈ�� �ٴҶ� ũ��</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Nitro-Chocolat-Cloud.png" class="coffeemenu-img" alt="����Ʈ�� ���ݶ� Ŭ���� �̹���"><p class="daehan">����Ʈ�� ���ݶ� Ŭ����</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Nitro-cold-brew.png" class="coffeemenu-img" alt="����Ʈ�� �ݵ� ��� �̹���"><p class="daehan">����Ʈ�� �ݵ� ���</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Dolce-Cold-Brew.png" class="coffeemenu-img" alt="��ü �ݵ� ��� �̹���"><p class="daehan">��ü �ݵ� ���</p></a></li>

									<li><a href="#"><img src="image/menu-Vanilla-Cream-Cold-Brew.png" class="coffeemenu-img" alt="�ٴҶ� ũ�� �ݵ� ��� �̹���"><p class="daehan">�ٴҶ� ũ�� �ݵ� ���</p></a></li>
									<li><a href="#"><img src="image/menu-Cold-Brew-Malt.png" class="coffeemenu-img" alt="�ݵ� ��� ��Ʈ �̹���"><p class="daehan">�ݵ� ��� ��Ʈ</p></a></li>
									<li><a href="#"><img src="image/menu-Cold-Brew-Float.png" class="coffeemenu-img" alt="�ݵ� ��� �÷�Ʈ �̹���"><p class="daehan">�ݵ� ��� �÷�Ʈ</p></a></li>
									<li><a href="#"><img src="image/menu-Cold-Brew.png" class="coffeemenu-img" alt="�ݵ��� �̹���"><p class="daehan">�ݵ���</p></a></li>
								</ul>

								<h5>���� Ŀ��</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-Iced-Coffee.png" class="coffeemenu-img" alt="ȭ��Ʈ ���ݸ� ��ī �̹���"><p class="daehan">���̽� Ŀ��</p></a></li>
									<li><a href="#"><img src="image/menu-Coffee-of-the-day.png" class="coffeemenu-img" alt="���������� �̹���"><p class="daehan">������ Ŀ��</p></a></li>
								</ul>

								<h5>����������</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-toffee nut latte.png" class="coffeemenu-img" alt="���ǳ� �� �̹���"><p class="daehan">���ǳ� ��</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-ice toffee nut latte.png" class="coffeemenu-img" alt="���̽� ���ǳ� �� �̹���"><p class="daehan">���̽� ���ǳ� ��</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Americano.png" class="coffeemenu-img" alt="�Ƹ޸�ī�� �̹���"><p class="daehan">�Ƹ޸�ī��</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-ice Americano.png" class="coffeemenu-img" alt="���̽� �Ƹ޸�ī�� �̹���"><p class="daehan">���̽� �Ƹ޸�ī��</p></a></li>

									<li><a href="#"><img src="image/menu-Caramel Macchiato.png" class="coffeemenu-img" alt="ī���	�����߶� �̹���"><p class="daehan">ī��Ḷ���߶�</p></a></li>
									<li><a href="#"><img src="image/menu-ice Caramel Macchiato.png" class="coffeemenu-img" alt="���̽� ī��Ḷ���߶� �̹���"><p class="daehan">���̽� ī��Ḷ���߶�</p></a></li>
									<li><a href="#"><img src="image/menu-Cafe Latte.png" class="coffeemenu-img" alt="ī��� �̹���"><p class="daehan">ī���</p></a></li>
									<li><a href="#"><img src="image/menu-ice Cafe Latte.png" class="coffeemenu-img" alt="���̽� ī��� �̹���"><p class="daehan">���̽� ī���</p></a></li>

									<li><a href="#"><img src="image/menu-Dolce latte.png" class="coffeemenu-img" alt="��ü �� �̹���"><p class="daehan">��ü ��</p></a></li>
									<li><a href="#"><img src="image/menu-ice Dolce latte.png" class="coffeemenu-img" alt="���̽� ��ü �� �̹���"><p class="daehan">���̽� ��ü ��</p></a></li>
									<li><a href="#"><img src="image/menu-White Chocolate Mocha.png" class="coffeemenu-img" alt="ȭ��Ʈ ���ݸ� ��ī �̹���"><p class="daehan">ȭ��Ʈ ���ݸ� ��ī</p></a></li>
									<li><a href="#"><img src="image/menu-Espresso.png" class="coffeemenu-img" alt="���������� �̹���"><p class="daehan">����������</p></a></li>
								</ul>

								<h5>����Ǫġ��</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-Organic-Matcha-Frappuccino.png" class="coffeemenu-img" alt="����� ������ ���� ũ�� ����Ǫġ�� �̹���"><p class="daehan">����� ������ ���� ũ�� ����Ǫġ��</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Java-Chip-Frappuccino.png" class="coffeemenu-img" alt="�ڹ�Ĩ ����Ǫġ�� �̹���"><p class="daehan">�ڹ�Ĩ ����Ǫġ��</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Icheon-New-Rice-Coffee-Frapuccino.png" class="coffeemenu-img" alt="��õ �ݽ� Ŀ�� ����Ǫġ�� �̹���"><p class="daehan">��õ �ݽ� Ŀ�� ����Ǫġ��</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-White-Chocolate-Mocha-Frappuccino.png"		class="coffeemenu-img" alt="ȭ��Ʈ ���ݸ� ��ī ����Ǫġ�� �̹���"><p class="daehan">ȭ��Ʈ ���ݸ� ��ī ����Ǫġ��</p></a></li>

									<li><a href="#"><img src="image/menu-Caramel-Frappuccino.png" class="coffeemenu-img" alt="ī��� ����Ǫġ�� �̹���"><p class="daehan">ī��� ����Ǫġ��</p></a></li>
									<li><a href="#"><img src="image/menu-Green-Tea-Cream-Frappuccino.png" class="coffeemenu-img" alt="�׸� Ƽ ũ�� ����Ǫġ�� �̹���"><p class="daehan">�׸� Ƽ ũ�� ����Ǫġ��</p></a></li>
									<li><a href="#"><img src="image/menu-Mocha-frappuccino.png" class="coffeemenu-img" alt="��ī ����Ǫġ�� �̹���"><p class="daehan">��ī ����Ǫġ��</p></a></li>
									<li><a href="#"><img src="image/menu-Espresso-frappuccino.png" class="coffeemenu-img" alt="���������� ����Ǫġ�� �̹���"><p class="daehan">���������� ����Ǫġ��</p></a></li>
								</ul>

								<h5>�����</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-Grapefruit-Sorbet-Blended.png" class="coffeemenu-img" alt="�ڸ� �Ź� ����� �̹���"><p class="daehan">�ڸ� �Ź� �����</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Strawberry-Yogurt-Blended.png" class="coffeemenu-img" alt="���� ���Ʈ ����� �̹���"><p class="daehan">���� ���Ʈ �����</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Mango-Banana-Blended.png" class="coffeemenu-img" alt="���� �ٳ��� ����� �̹���"><p class="daehan">���� �ٳ��� �����</p></a>

									<li><a href="#"><img src="image/menu-Mango-Passion-Fruit-Blended.png" class="coffeemenu-img" alt="���� �м� �ĸ��� ����� �̹���"><p class="daehan">���� �м� �ĸ��� �����</p></a></li>

									<li><a href="#"><img src="image/menu-Extreme-tea-blended.png" class="coffeemenu-img" alt="�ͽ�Ʈ�� Ƽ �����"><p class="daehan">�ͽ�Ʈ�� Ƽ �����</p></a></li>
								</ul>
							</div>			
			
							<div id="coffeemenu-tab2">
								<h5>�ݵ�η� Ŀ��</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-Nitro-vanilla-cream.png" class="coffeemenu-img" alt="����Ʈ�� �ٴҶ� ũ�� �̹���"><p class="daehan">����Ʈ�� �ٴҶ� ũ��</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Nitro-Chocolat-Cloud.png" class="coffeemenu-img" alt="����Ʈ�� ���ݶ� Ŭ���� �̹���"><p class="daehan">����Ʈ�� ���ݶ� Ŭ����</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Nitro-cold-brew.png" class="coffeemenu-img" alt="����Ʈ�� �ݵ� ��� �̹���"><p class="daehan">����Ʈ�� �ݵ� ���</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Dolce-Cold-Brew.png" class="coffeemenu-img" alt="��ü �ݵ� ��� �̹���"><p class="daehan">��ü �ݵ� ���</p></a></li>

									<li><a href="#"><img src="image/menu-Vanilla-Cream-Cold-Brew.png" class="coffeemenu-img" alt="�ٴҶ� ũ�� �ݵ� ��� �̹���"><p class="daehan">�ٴҶ� ũ�� �ݵ� ���</p></a></li>

									<li><a href="#"><img src="image/menu-Cold-Brew-Malt.png" class="coffeemenu-img" alt="�ݵ� ��� ��Ʈ �̹���"><p class="daehan">�ݵ� ��� ��Ʈ</p></a></li>

									<li><a href="#"><img src="image/menu-Cold-Brew-Float.png" class="coffeemenu-img" alt="�ݵ� ��� �÷�Ʈ �̹���"><p class="daehan">�ݵ� ��� �÷�Ʈ</p></a></li>

									<li><a href="#"><img src="image/menu-Cold-Brew.png" class="coffeemenu-img" alt="�ݵ��� �̹���"><p class="daehan">�ݵ���</p></a></li>
								</ul>
							</div>
											
							<div id="coffeemenu-tab3">
								<h5>���� Ŀ��</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-Iced-Coffee.png" class="coffeemenu-img" alt="ȭ��Ʈ ���ݸ� ��ī �̹���"><p class="daehan">���̽� Ŀ��</p></a></li>
									<li><a href="#"><img src="image/menu-Coffee-of-the-day.png" class="coffeemenu-img" alt="���������� �̹���"><p class="daehan">������ Ŀ��</p></a></li>
								</ul>
							</div>
											
							<div id="coffeemenu-tab4">
								<h5>����������</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-toffee nut latte.png" class="coffeemenu-img" alt="���ǳ� �� �̹���"><p class="daehan">���ǳ� ��</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-ice toffee nut latte.png" class="coffeemenu-img" alt="���̽� ���ǳ� �� �̹���"><p class="daehan">���̽� ���ǳ� ��</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Americano.png" class="coffeemenu-img" alt="�Ƹ޸�ī�� �̹���"><p class="daehan">�Ƹ޸�ī��</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-ice Americano.png" class="coffeemenu-img" alt="���̽� �Ƹ޸�ī�� �̹���"><p class="daehan">���̽� �Ƹ޸�ī��</p></a></li>

									<li><a href="#"><img src="image/menu-Caramel Macchiato.png" class="coffeemenu-img" alt="ī��Ḷ���߶� �̹���"><p class="daehan">ī��Ḷ���߶�</p></a></li>

									<li><a href="#"><img src="image/menu-ice Caramel Macchiato.png" class="coffeemenu-img" alt="���̽� ī��Ḷ���߶� �̹���"><p class="daehan">���̽� ī��Ḷ���߶�</p></a></li>

									<li><a href="#"><img src="image/menu-Cafe Latte.png" class="coffeemenu-img" alt="ī��� �̹���"><p class="daehan">ī���</p></a></li>

									<li><a href="#"><img src="image/menu-ice Cafe Latte.png" class="coffeemenu-img" alt="���̽� ī��� �̹���"><p class="daehan">���̽� ī���</p></a></li>

									<li><a href="#"><img src="image/menu-Dolce latte.png" class="coffeemenu-img" alt="��ü �� �̹���"><p class="daehan">��ü ��</p></a></li>

									<li><a href="#"><img src="image/menu-ice Dolce latte.png" class="coffeemenu-img" alt="���̽� ��ü �� �̹���"><p class="daehan">���̽� ��ü ��</p></a></li>

									<li><a href="#"><img src="image/menu-White Chocolate Mocha.png" class="coffeemenu-img" alt="ȭ��Ʈ ���ݸ� ��ī �̹���"><p class="daehan">ȭ��Ʈ ���ݸ� ��ī</p></a></li>

									<li><a href="#"><img src="image/menu-Espresso.png" class="coffeemenu-img" alt="���������� �̹���"><p class="daehan">����������</p></a></li>
								</ul>
							</div>
											
							<div id="coffeemenu-tab5">
								<h5>����Ǫġ��</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-Organic-Matcha-Frappuccino.png" class="coffeemenu-img" alt="����� ������ ���� ũ�� ����Ǫġ�� �̹���"><p class="daehan">����� ������ ���� ũ�� ����Ǫġ��</p></a>
										<img src="images/new.png" alt="��������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Java-Chip-Frappuccino.png" class="coffeemenu-img" alt="�ڹ�Ĩ ����Ǫġ�� �̹���"><p class="daehan">�ڹ�Ĩ ����Ǫġ��</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Icheon-New-Rice-Coffee-Frapuccino.png" class="coffeemenu-img" alt="��õ �ݽ� Ŀ�� ����Ǫġ�� �̹���"><p class="daehan">��õ �ݽ� Ŀ�� ����Ǫġ��</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-White-Chocolate-Mocha-Frappuccino.png" class="coffeemenu-img" alt="ȭ��Ʈ ���ݸ� ��ī ����Ǫġ�� �̹���"><p class="daehan">ȭ��Ʈ ���ݸ� ��ī ����Ǫġ��</p></a></li>

									<li><a href="#"><img src="image/menu-Caramel-Frappuccino.png" class="coffeemenu-img" alt="ī��� ����Ǫġ�� �̹���"><p class="daehan">ī��� ����Ǫġ��</p></a></li>

									<li><a href="#"><img src="image/menu-Green-Tea-Cream-Frappuccino.png" class="coffeemenu-img" alt="�׸� Ƽ ũ�� ����Ǫġ�� �̹���"><p class="daehan">�׸� Ƽ ũ�� ����Ǫġ��</p></a></li>

									<li><a href="#"><img src="image/menu-Mocha-frappuccino.png" class="coffeemenu-img" alt="��ī ����Ǫġ�� �̹���"><p class="daehan">��ī ����Ǫġ��</p></a></li>

									<li><a href="#"><img src="image/menu-Espresso-frappuccino.png" class="coffeemenu-img" alt="���������� ����Ǫġ�� �̹���"><p class="daehan">���������� ����Ǫġ��</p></a></li>
								</ul>
							</div>
												
							<div id="coffeemenu-tab6">
								<h5>����</h5>
								<ul class="coffeemenu-image">
									<li><a href="#"><img src="image/menu-Grapefruit-Sorbet-Blended.png" class="coffeemenu-img" alt="�ڸ� �Ź� ����� �̹���"><p class="daehan">�ڸ� �Ź� �����</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Strawberry-Yogurt-Blended.png" class="coffeemenu-img" alt="���� ���Ʈ ����� �̹���"><p class="daehan">���� ���Ʈ �����</p></a>
										<img src="images/best.png" alt="����Ʈ������" class="coffee-bottom-img"></li>

									<li><a href="#"><img src="image/menu-Mango-Banana-Blended.png" class="coffeemenu-img" alt="���� �ٳ��� ����� �̹���"><p class="daehan">���� �ٳ��� �����</p></a>

									<li><a href="#"><img src="image/menu-Mango-Passion-Fruit-Blended.png" class="coffeemenu-img" alt="���� �м� �ĸ��� ����� �̹���"><p class="daehan">���� �м� �ĸ��� �����</p></a></li>

									<li><a href="#"><img src="image/menu-Extreme-tea-blended.png" class="coffeemenu-img" alt="�ͽ�Ʈ�� Ƽ �����"><p class="daehan">�ͽ�Ʈ�� Ƽ �����</p></a></li>
								</ul>
							</div>
						</div>
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