<%@page import="kr.Farmstory1.dto.ArticleDTO"%>
<%@page import="java.util.List"%>
<%@page import="kr.Farmstory1.dao.ArticleDAO"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");	
	String group = request.getParameter("group");		
	
	ArticleDAO dao = new ArticleDAO();
	List<ArticleDTO> latestGrow = dao.selectLatests("grow", 5);
	List<ArticleDTO> latestStory = dao.selectLatests("story", 5);
	List<ArticleDTO> latestSchool = dao.selectLatests("school", 5);
	
	List<ArticleDTO> tabLatestNotice = dao.selectLatests("notice", 3);
	List<ArticleDTO> tabLatestQna= dao.selectLatests("qna", 3);
	List<ArticleDTO> tabLatestFaq = dao.selectLatests("faq", 3);
	
%>
<main>
	<div class="slider">
		<ul class="slides">
			<li><img src="./images/main_slide_img1.jpg" alt="슬라이드1"></li>
			<li><img src="./images/main_slide_img2.jpg" alt="슬라이드2"></li>
			<li><img src="./images/main_slide_img3.jpg" alt="슬라이드3"></li>
		</ul>
		<img src="./images/main_slide_img_tit.png" alt="사람과 자연을 사랑하는 팜스토리"/>
		<div class="banner">
			<img src="./images/main_banner_txt.png" alt="GRAND OPEN"/> 
			<img src="./images/main_banner_tit.png" alt="팜스토리 오픈기념 30% 할인 이벤트"/>
			<img src="./images/main_banner_img.png" alt="과일 이미지"/>
		</div> 
	</div>
	
	<div class="quick">
		<a href="/Farmstory1/board/list.jsp?group=Community&cate=menu"><img src="./images/main_banner_sub1_tit.png" alt="오늘의 식단"></a> 
		<a href="/Farmstory1/board/list.jsp?group=Community&cate=chef"><img src="./images/main_banner_sub2_tit.png" alt="나도 요리사"></a>
	</div>
	
	<div class="latest">
		<article>
			<a href="/Farmstory1/board/list.jsp?group=Croptalk&cate=grow"> <img src="./images/main_latest1_tit.png" alt="텃밭가꾸기"></a>
			<img src="./images/main_latest1_img.jpg" alt="이미지">
			<table border="0">
				<% for(ArticleDTO latest : latestGrow) { %>
				<tr>
					<td>></td>
					<td><a href="/Farmstory1/board/view.jsp?group=Croptalk&cate=<%= latest.getCate() %>&no=<%= latest.getNo() %>"><%= latest.getTitle() %></a></td>
					<td><%= latest.getRdate() %></td>
				</tr>
				<% } %>
			</table>
		</article>
		
		<article>
			<a href="/Farmstory1/board/list.jsp?group=Croptalk&cate=school"><img src="./images/main_latest2_tit.png" alt="귀농학교"></a>
			<img src="./images/main_latest2_img.jpg" alt="이미지">
			<table border="0">
				<% for(ArticleDTO latest : latestSchool) { %>
				<tr>
					<td>></td>
					<td><a href="/Farmstory1/board/view.jsp?group=Croptalk&cate=<%= latest.getCate() %>&no=<%= latest.getNo() %>"><%= latest.getTitle() %></a></td>
					<td><%= latest.getRdate() %></td>
				</tr>
				<% } %>
			</table>
		</article>
		
		<article>
			<a href="/Farmstory1/board/list.jsp?group=Croptalk&cate=story"><img src="./images/main_latest3_tit.png" alt="농작물이야기"></a>
			<img src="./images/main_latest3_img.jpg" alt="이미지">
			<table border="0">
				<% for(ArticleDTO latest : latestStory) { %>
				<tr>
					<td>></td>
					<td><a href="/Farmstory1/board/view.jsp?group=Croptalk&cate=<%= latest.getCate() %>&no=<%= latest.getNo() %>"><%= latest.getTitle() %></a></td>
					<td><%= latest.getRdate() %></td>
				</tr>
				<% } %>
			</table>
		</article>
	</div>
	
	<div class="info">
		<div>
			<img src="./images/main_sub2_cs_tit.png" class="tit" alt="고객센터안내">
			<div class="tel">
				<img src="./images/main_sub2_cs_img.png" alt=""> 
				<img src="./images/main_sub2_cs_txt.png" alt="1666-777">
				<p class="time">
					평일 : AM 09:00 ~ PM 06:00 <br> 
					점심 : PM 12:00 ~ PM 01:00 <br>
					토, 일요일, 공휴일 휴무
				</p>
			</div>
			
			<div class="btns">
				<a href="#"> <img src="./images/main_sub2_cs_bt1.png" alt="1:1 고객문의"> </a> 
				<a href="#"> <img src="./images/main_sub2_cs_bt2.png" alt="자주묻는질문"> </a> 
				<a href="#"> <img src="./images/main_sub2_cs_bt3.png" alt="배송 조회"> </a>
			</div>
		</div>
		
		<div>
			<img src="./images/main_sub2_account_tit.png" class="tit" alt="계좌안내">
			<p class="account">
				기업은행 123-456789-01-01-012 <br> 국민은행 01-1234-56789 <br>
				우리은행 123-456789-01-01-012 <br> 하나은행 123-456789-01-01 <br>
				예 금 주 (주)팜스토리
			</p>
		</div>
        <div>
            <div id="tabs">
                <ul>
                    <li><a href="#tabs-1">공지사항</a></li>
                    <li><a href="#tabs-2">1:1 고객문의</a></li>
                    <li><a href="#tabs-3">자주묻는 질문</a></li>
                </ul>
                <div id="tabs-1">
                    <ul class="txt">
                    	<% for(ArticleDTO latest :tabLatestNotice) { %>
						<li><a href="/Farmstory1/board/view.jsp?group=Community&cate=<%= latest.getCate() %>&no=<%= latest.getNo() %>">· <%=latest.getTitle() %></a></li>
					<% } %>
					</ul>
				</div>
                <div id="tabs-2">
                    <ul class="txt">
                    	<% for(ArticleDTO latest : tabLatestQna) { %>
						<li><a href="/Farmstory1/board/view.jsp?group=Community&cate=<%= latest.getCate() %>&no=<%= latest.getNo() %>">· <%=latest.getTitle() %></a></li>
					<% } %>
					</ul>
				</div>
                <div id="tabs-3">
                    <ul class="txt">
                    	<% for(ArticleDTO latest : tabLatestFaq) { %>
						<li><a href="/Farmstory1/board/view.jsp?group=Community&cate=<%= latest.getCate() %>&no=<%= latest.getNo() %>">· <%=latest.getTitle() %></a></li>
					<% } %>
					</ul>
				</div>
			</div>
		</div>
	</div>
</main>
<%@ include file="./_footer.jsp" %>