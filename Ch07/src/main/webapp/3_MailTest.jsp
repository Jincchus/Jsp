<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MailTest</title>
		<!-- 
			날짜 : 2023/08/21
			이름 : 박경진
			내용 : 메일 전송 실습
		 -->
	</head>
	<body>
		<h3>3.이메일 전송 실습</h3>
		<form action="./proc/sendEmail.jsp" method="post">
			<table border="1">
				<tr>
					<td>보내는 사람
						<input type="text" name="sender">
					</td>
				</tr>
				<tr>
					<td>받는 사람
						<input type="text" name="receiver">
					</td>
				</tr>
				<tr>
					<td>제목
						<input type="text" name="title">
					</td>
				</tr>
				<tr>
					<td>내용</td>
				</tr>
				<tr>
					<td>
						<textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="보내기"></td>
				</tr>
			</table>
		</form>
	</body>
</html>