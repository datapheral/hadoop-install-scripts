@echo off
rem set JETTY_HOME=D:\javaapps2014\jetty-distribution-8.1.1.v20120215
rem set JDK_HOME=c:\Program Files\Java\jdk1.7.0_51
rem set the path correctly
echo %JETTY_HOME%
echo %JDK_HOME%

rem "%JDK_HOME%/bin/javac" -d webapps\example\WEB-INF\classes -cp %JETTY_HOME%/lib/servlet-api-3.0.jar src/com/example/model/BeerExpert.java 
rem "%JDK_HOME%/bin/javac" -d webapps\example\WEB-INF\classes -cp %JETTY_HOME%/lib/servlet-api-3.0.jar;webapps\example\WEB-INF\classes src/com/example/web/DownloadFile.java 
"%JDK_HOME%/bin/jar" cvf example.war -C webapps/example/ .
copy example.war %JETTY_HOME%\webapps
pause