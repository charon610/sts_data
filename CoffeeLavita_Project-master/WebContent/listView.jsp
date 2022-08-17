<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/listView.css">
<link rel="stylesheet" href="css/nav-footer.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<meta name="viewport" content="width=device-width">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<div class="header-inner">
				<h1 class="logo">
					<a href="index.jsp" title="라비타 메인 로고">라비타 로고</a>
				</h1>

				<ul class="header-text">
					<li class="myname"><c:if test="${member != null}">
							<p>
								<span class="memberName">${member.name}</span>님 안녕하세요.
							</p>
						</c:if></li>
					<li><a href="#">알림</a></li>
					<li><c:if test="${member == null}">
							<a href="log.jsp">로그인</a>
						</c:if> <c:if test="${member != null}">
							<a href="logout.jsp">로그아웃</a>
						</c:if></li>
					<li><c:if test="${member == null}">
							<a href="" class="alert">마이페이지</a>
						</c:if> <c:if test="${member != null}">
							<a href="mypage.jsp">마이페이지</a>
						</c:if>
					<li><a href="list">고객센터</a></li>
					<li><select class="length">
							<option selected>KOREA</option>
							<option>English</option>
							<option>China</option>
							<option>Japan</option>
					</select></li>
				</ul>
				<div class="last-gnb">
					<a href="#" class="two_bar"></a> <a href="#" class="two_bar"></a>
				</div>
			</div>

			<div id="nav">
				<!--<div class = "nav-inner">-->
				<ul class="nav-bar">
					<li><a href="#">COFFEE & LAVITA</a>
						<ul class="nav-subbar">
							<li><a href="#">LAVITA 소개</a></li>
							<li><a href="#">LAVITA BI</a></li>
							<li><a href="#">LAVITA 채용</a></li>
							<li><a href="#">LAVITA 커피</a></li>
						</ul></li>

					<li><a href="#">MENU</a>
						<ul class="nav-subbar">
							<li><a href="coffee-menu.jsp">커피</a></li>
							<li><a href="#">음료&차</a></li>
							<li><a href="#">디저트</a></li>
							<li><a href="#">상품</a></li>
							<li><a href="#">카드</a></li>
							<li><a href="#">영양성분표</a></li>
						</ul></li>

					<li><a href="#">EVENT</a>
						<ul class="nav-subbar">
							<li><a href="#">진행중인 이벤트</a></li>
							<li><a href="#">종료된 이벤트</a></li>
							<li><a href="#">당첨자 발표</a></li>
						</ul></li>

					<li><a href="#">CARD</a>
						<ul class="nav-subbar">
							<li><a href="#">LAVITA 카드</a></li>
							<li><a href="#">등급 및 혜택</a></li>
							<li><a href="#">제휴 할인 카드</a></li>
						</ul></li>

					<li><a href="#">STORE</a>
						<ul class="nav-subbar">
							<li><a href="#">매장 찾기</a></li>
							<li><a href="#">특수 매장</a></li>
							<li><a href="#">신규 매장</a></li>
							<li><a href="#">가맹 문의</a></li>
						</ul></li>

					<li><a href="#">공지사항</a>
						<ul class="nav-subbar">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">새소식</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

	<div id="content">
		<div class="content-claim">
			<div class="background-top">
				<h2>문의 내용</h2>
			</div>
			<div class="claim-bottom">
				<div class="location">
					<a href="main.html">메인></a><a href="claim.html">문의내용</a>
				</div>
				<div class="claim-left">
					<div id="root">
						<header>
							<h1>게시판</h1>
						</header>
						<hr />

						<section id="container">
							<form role="form" method="post" name="readForm">
								<table>
									<tbody>
										<tr>
											<td><label for="bno">글 번호</label> <input name="bno"
												value="${read.bno}" readonly class="bnoinput"></td>
										</tr>
										<tr>
											<td><label for="title">제목</label>${read.title}</td>
										</tr>
										<tr>
											<td class="content-height"><label for="content">내용</label>
												<div class="content-box">${read.content}</div></td>
										</tr>
										<tr>
											<td><label for="writer">작성자</label>${read.writer}</td>
										</tr>
										<tr>
											<td><label for="regdate">작성날짜</label>${read.regdate}</td>
										</tr>
									</tbody>
								</table>
								<div class="btnBox">
									<c:if test="${member != null}">
										<c:if test="${member.mem_id == read.board_id}">
											<button type="submit" class="update_btn">수정</button>
											<button type="submit" class="delete_btn">삭제</button>
										</c:if>
									</c:if>
								</div>
							</form>
						</section>
						<hr />
						<button class="back">
							<a href="#" onclick="history.go(-1)"> 목록으로 돌아가기 </a>
						</button>
					</div>

				</div>

				<div class="side-right">
					<ul class="side-right-inner">
						<li><a href="claim.jsp">고객의 소리</a></li>
						<li><a href="list">문의내용</a></li>
						<li><a href="#">자주하는 질문</a></li>
						<li><a href="#">제휴, 마케팅제안</a></li>
						<li><a href="#">채용 정보</a></li>
					</ul>
				</div>
			</div>
		</div>
		</form>
	</div>

	<div id="footer1">
		<div class="footer1-inner">
			<ul>
				<li><a href="#">개인정보 처리 방침</a></li>
				<li><a href="#">영상정보처리기기운영관리방침</a></li>
				<li><a href="#">홈페이지 이용약관</a></li>
				<li><a href="#">윤리경영</a></li>
			</ul>
		</div>
	</div>

	<div id="footer2">
		<div class="footer2-inner">
			<p class="footer-lavita">COFFEE & LAVITA</p>
			<P>
				(주)COFFEE & LAVITA 대표이사: 이명호 사업자등록번호 000-00-00000 통신판매업신고 제
				2019-서울강남-00560 <br>서울시 강남구 봉은사로 99길 7 고객센터 02-000-0000 (09:00
				~ 18:00) Email: cl@lavitako.combako.com <br>copyrightⓒ
				2019.COFFEE & LAVITA
		</div>
	</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$(".alert").click(function() {
				alert("로그인이 필요한 서비스입니다.")
			})

			var formObj = $("form[name = 'readForm']");
			//수정
			$(".update_btn").on("click", function() {
				formObj.attr("action", "updateViewlist");
				formObj.attr("method", "post");
				formObj.submit();
			})

			//삭제
			$(".delete_btn").on("click", function() {
				formObj.attr("action", "delete");
				formObj.attr("method", "post");
				alert("게시물 삭제가 완료되었습니다.")
				formObj.submit();
			})
		})
	</script>
</body>
</html>