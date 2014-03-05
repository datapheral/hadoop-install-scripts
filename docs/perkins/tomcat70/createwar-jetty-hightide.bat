@echo off
del examples-dp.war
echo %JETTY_HIGH_TIDE%
echo %JDK_HOME%
"%JDK_HOME%/bin/jar" cvf examples-dp.war -C examples .
copy examples-dp.war %JETTY_HIGH_TIDE%\webapps
pause