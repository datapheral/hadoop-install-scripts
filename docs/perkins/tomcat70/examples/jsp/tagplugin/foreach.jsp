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
<html>
  <head>
    <title>Tag Plugin Examples: forEach</title>
  </head>
  <body>
    <h1>Tag Plugin Examples - &lt;c:forEach></h1>

    <hr/>
    <br/>
    <a href="notes.html">Plugin Introductory Notes</a>
    <br/>
    <a href="howto.html">Brief Instructions for Writing Plugins</a>
    <br/> <br/>
    <hr/>

    <br/>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.Vector" %>

    <h3>Iterating over a range</h3>
    <c:forEach var="item" begin="1" end="10">
        ${item}
    </c:forEach>

    <% Vector v = new Vector();
        v.add("One"); v.add("Two"); v.add("Three"); v.add("Four");

        pageContext.setAttribute("vector", v);
    %>

    <h3>Iterating over a Vector</h3>

    <c:forEach items="${vector}" var="item" >
        ${item}
    </c:forEach>
	
    <h3>Iterating over movies from servlet</h3>
	<table>
	<c:forEach var="movie" items="${movies}" varStatus="movieLoopCount" >
		<tr>
		<td>#${movieLoopCount.count}. ${movie}<br/><br/></td>
		</tr>
	</c:forEach>
	</table>	

    <h3>Iterating over nested movies from servlet</h3>
	<c:set var="counter" value="0" scope="page"/>
	<table>
	<c:forEach var="listElement" items="${nestedMovies}" varStatus="listElementCount" >		
		<c:forEach var="movie" items="${listElement}" varStatus="movieLoopCount" >
		<c:set var="counter" value="${counter + 1}" scope="page"/>
		<tr>
		<td>${counter} #${listElementCount.count}.${movieLoopCount.count}. ${movie}<br/><br/></td>
		</tr>
		</c:forEach>	
	</c:forEach>
	</table>	

    <h3>c:set on map or bean</h3>	
	<c:set target="${numberMapVar}" property="three" value="tres"/>
	<c:out value="${numberMapVar.three}"/>
	<c:out value="${numberMapVar.one}"/>
	
    <h3>c:remove var</h3>
	<c:remove var="numberMapVar"/>
	<c:out value="${numberMapVar.three}"/>
	<c:out value="${numberMapVar.one}"/>
	
	
	
	
  </body>
</html>
