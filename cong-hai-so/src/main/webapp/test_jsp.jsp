<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table BORDER=2 align=center>
		<tr>
			<th>Ho</th><th>Ten</th>
		</tr>
		<% 
			final String[][] name = {{"Pham","Duy"},{"Le","Hieu"}};
			for(int i=0;i<2;i++){
				out.print("<tr>");
				out.print("<td>&nbsp;"+name[i][0]+"&nbsp;</td>");
				out.print("<td>"+name[i][1]+"</td>");
				out.print("</tr>");
			}
		%>
	</table>
</body>
</html>