<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/list.css">
<link rel="stylesheet" href="css/nav-footer.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<meta name="viewport" content="width=device-width">
<title>게시판 목록</title>
<style>
tr:nth-of-type(even) {
	background: #f2f2f2;
}
</style>
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
							<c:if test="${member.mem_id == 'test10'}">
								<p>
									<a href="master" class="memberName">${member.name}</a>님 안녕하세요.
								</p>
							</c:if>
							<c:if test="${member.mem_id != 'test10'}">
								<p>
									<span class="memberName">${member.name}</span>님 안녕하세요.
								</p>
							</c:if>
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
						</c:if></li>
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
							<h1>문의 내용 게시판</h1>
							<c:if test="${member == null}">
								<button class="writeBtn">
									<a href="" class="alert">글 쓰기</a>
								</button>
							</c:if>
							<c:if test="${member != null}">
								<button class="writeBtn">
									<a href="claim.jsp">글 쓰기</a>
								</button>
							</c:if>
						</header>
						<hr />

						<section id="container">
							<form role="form" method="post" action="mylist">
								<table>
									<colgroup>
										<col style="width: 15%;">
										<col style="width: 45%;">
										<col style="width: 20%;">
										<col style="width: 20%;">
									</colgroup>
									<tr class="tableHead">
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>등록일</th>
									</tr>

									<c:forEach items="${list}" var="list">
										<tr class="bottom-line">
											<c:if test="${member != null}">
												<c:if test="${member.mem_id == list.board_id}">
													<td><c:out value="${list.bno}" /></td>
													<td class="left"><a href="listView?bno=${list.bno}"><c:out
																value="${list.title}" /></a></td>
													<td class="left"><c:out value="${list.writer}" /></td>
													<td><fmt:formatDate value="${list.regdate}"
															pattern="yyyy-MM-dd" /></td>
												</c:if>
											</c:if>
										</tr>
									</c:forEach>
								</table>
							</form>
						</section>
						<hr />
					</div>

				</div>

				<div class="side-right">
					<ul class="side-right-inner">
						<li><c:if test="${member == null}">
								<a href="" class="alert">고객의 소리</a>
							</c:if> <c:if test="${member != null}">
								<a href="claim.jsp">고객의 소리</a>
							</c:if></li>
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
		})
	</script>
</body>
</html>