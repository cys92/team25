<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.myin.sample.domain.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/views/include/header.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인페이지</title>	
</head>
<body>

<% 
ArrayList<sampleVo> slist =  (ArrayList<sampleVo>)request.getAttribute("slist");
%>		

	<table border=1 width="100%" style=align:center>
		<tr>
			<td>회원번호</td>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>주민번호</td>
			<td>주소</td>
			<td>성별</td>
			<td>IP</td>
			<td>부서번호</td>
			<td>가입일</td>
			<td>수정일</td>
		</tr>


		<%for (sampleVo svo : slist){ %>
		
<tr>
<td><%=svo.getMemberMidx() %></td>
<td><%=svo.getMemberId() %></td>
<td><%=svo.getMemberPassword() %></td>
<td><%=svo.getMemberName() %></td>
<td><%=svo.getMemberEmail() %></td>
<td><%=svo.getMemberJumin() %></td>
<td><%=svo.getMemberAddr() %></td>
<td><%=svo.getMemberSex() %></td>
<td><%=svo.getMemberIp() %></td>
<td><%=svo.getBidx() %></td>
<td><%=svo.getWriteday() %></td>
<td><%=svo.getModifyday() %></td>
</tr>
<% } %>		

</table>
</body>

	<%@include file="/WEB-INF/views/include/footer.jsp"%>
