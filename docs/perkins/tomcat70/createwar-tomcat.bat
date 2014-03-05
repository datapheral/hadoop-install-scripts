@echo off
del examples-dp.war
echo %TOMCAT_HOME%
echo %JDK_HOME%
"%JDK_HOME%/bin/jar" cvf examples-dp.war -C examples .
copy examples-dp.war %TOMCAT_HOME%\webapps
pause