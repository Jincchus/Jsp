<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../_header.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
	String group = request.getParameter("group");
	String cate = request.getParameter("cate");
	
	pageContext.include("./_aside"+group+".jsp");
%>

			<section class="list">
				<h3>글목록</h3>
				<article>
					<table border="0">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>글쓴이</th>
							<th>날짜</th>
							<th>조회</th>
						</tr>
						<tr>
							<td>@</td>
							<td><a href="./view.jsp?group=<%= group %>&cate=<%=cate%>">제목입니다</a>&nbsp;[3]</td>
							<td>별명</td>
							<td>23-08-17</td>
							<td>12</td>
						</tr>
					</table>
				</article>

				<!-- 페이지 네비게이션 -->
				<div class="paging">
					<a href="#" class="prev">이전</a> <a href="#" class="num current"></a>
					<a href="#" class="next">다음</a>
				</div>

				<!-- 글쓰기 버튼 -->
				<a href="./write.jsp?group=<%=group %>&cate=<%= cate %>" class="btnWrite">글쓰기</a>
			</section>

			<!-- 컨텐츠 끝 -->
		</article>
	</section>
</div>
<%@include file="../_footer.jsp"%>