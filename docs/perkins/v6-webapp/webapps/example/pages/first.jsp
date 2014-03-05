<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
The page count is:
<%
	out.println("sample out");
%>
<br>
<br>
Scriptlet 
<br>
<% 
	out.println("this is out from scriptlet");
%>
<br>
Directive
<br>
<%@ include file="includemedirective.html" %>
<%@ page import="java.util.*,java.text.*" session="false" %>
<br><br>
Expression
<br>
Random = <%= Math.random() %>
<%!
	DateFormat df = DateFormat.getInstance();
	String dt = df.format(new Date());
%>
Date = <%= dt %>
<br><br>
Declaration
<%! 
int square(int input) {
	return input*input;
}
%>
<br>
Expression square(2) = <%= square(2) %>
<br><br>
Setting page-scoped attribute
<%
	Float one = new Float(3.1415);
	pageContext.setAttribute("pi",one);
%>
<br><br>
Getting page-scoped attribute
<%= pageContext.getAttribute("pi") %>
<br><br>
Setting session-scoped attribute
<%
	/*
	Float two= new Float(3.1415);
	pageContext.setAttribute("pi2",two,PageContext.SESSION_SCOPE);
	*/
%>
<br><br>
Getting session-scoped attribute
<---%= pageContext.getAttribute("pi2",PageContext.SESSION_SCOPE) %>

<br><br>
Setting application-scoped attribute
<%
	Float thress = new Float(3.1415);
	pageContext.setAttribute("pi",thress, PageContext.APPLICATION_SCOPE);
%>
<br><br>
Getting application-scoped attribute
<%= pageContext.getAttribute("pi", PageContext.APPLICATION_SCOPE) %>

<br><br>
Sample EL - Expression Language ${pageScope.pi}
<br><br>

<br><br>
<a href="<c:url value='/menu.jsp'/>">Main</a>
</body>
</html>
