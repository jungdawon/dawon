<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form method="post" name="userinput" action="main/inputPro.to">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" align="center" name="id"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" align="center" name="pass"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" align="center" name="name"/></td>
		</tr>
		<tr>
			<td>라읻어</td>
			<td>
				aa<input type="radio" name="bbb" value="1" />
				bb<input type="radio" name="bbb" value="2" />
			</td>
		</tr>
		<tr>
			<td>라읻어</td>
			<td>
				aa<input type="checkbox" name="bbb" value="1" />
				bb<input type="checkbox" name="bbb" value="2" />
			</td>
		</tr>
	</table>
</form>