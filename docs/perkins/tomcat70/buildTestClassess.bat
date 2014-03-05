@echo off
echo %JDK_HOME%

echo utils
%JDK_HOME%\bin\javac src/dp/utils/HTMLHelper.java -d examples/WEB-INF/classes
%JDK_HOME%\bin\java -cp examples/WEB-INF/classes  dp.utils.HTMLHelper

echo foreach servlet
%JDK_HOME%\bin\javac -cp examples/WEB-INF/lib/servlet-api.jar; src/dp/jsp/tagplugin/ForEachServlet.java -d examples/WEB-INF/classes

echo annotations
%JDK_HOME%\bin\javac -cp examples/WEB-INF/lib/servlet-api.jar; src/annotations/CatalogueSearch.java -d examples/WEB-INF/classes

echo annotations with dispatcher
%JDK_HOME%\bin\javac -cp examples/WEB-INF/lib/servlet-api.jar; src/annotations/CatalogueSearchDispatcher.java -d examples/WEB-INF/classes


pause