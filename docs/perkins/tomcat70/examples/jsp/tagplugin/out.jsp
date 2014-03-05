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
    <title>Tag Plugin Examples: Out</title>
  </head>
  <body>
    <h1>Tag Plugin Examples - &lt;c:out></h1>

    <hr/>
    <br/>
    <a href="notes.html">Plugin Introductory Notes</a>
    <br/>
    <a href="howto.html">Brief Instructions for Writing Plugins</a>
    <br/> <br/>
    <hr/>

    <br/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <h3>Set value to variable</h3>
	<c:set var="someText" value="<b><u>Some text</u></b>" scope="page"/>
	
	<h3>Get value </h3>
	<p><c:out value="Sample Value"/></p>
	
	<h3>Get value from variable, default escapeXml=true</h3>
	<p><c:out value="${someText}"/></p>
	
	<h3>Get value from variable, escapeXml=false</h3>
	<p><c:out value="${someText}" escapeXml="false"/></p>
		
	<h3>Default value, default="Guest"</h3>
	<p><c:out value="${user}" default="Guest"/></p>
	<p><c:out value="${user}" >Guest2</c:out></p>	
			
	
  </body>
</html>
