<%--
 Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<%
  if (request.getParameter("logoff") != null) {
    session.invalidate();
    response.sendRedirect("index.jsp");
    return;
  }
%>
<%@ page import="dp.utils.HTMLHelper.*" %>
<html>
<head>
<title>Protected Page for Examples</title>
</head>
<body bgcolor="white">

<br/>
You are logged-in as <b><%= request.getRemoteUser() %></b> in session <b><%= session.getId() %></b>

<br/><br/>
<%
	String checkRole = request.getParameter("checkRole");
	String roleName = dp.utils.HTMLHelper.htlmStringDecode(request.getParameter("roleName"));
	String user = request.getRemoteUser();
	
	if ( checkRole != null && checkRole.equals("yes")) {
		if (roleName != null & request.isUserInRole(roleName) ) {
			out.print("<b>User " + user + " is part of this role " + roleName + "</b>");
		} else {
			out.print("<b>User " + user + " is not part this role " + roleName + "</b>");
		}
	} 
%>
<br/><br/>
<form method="GET" action="<%=response.encodeURL("index.jsp")%>">
	Check this role, Admin, Member, Guest, tomcat: <input type="text" value="" name="roleName">
	<input type="hidden" value="yes" name="checkRole">
</form>
<br/><br/>
If you have configured this app for form-based authentication, you can log
off by clicking
<a href='<%= response.encodeURL("index.jsp?logoff=true") %>'>here</a>.
<br/>
This should cause you to be returned to the logon page after the redirect
that is performed.

</body>
</html>
