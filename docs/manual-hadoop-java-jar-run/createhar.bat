"c:\Program Files\Java\jdk1.7.0_51\bin\javac" -d bin sources/com/test/TestJSSJar.java
"c:\Program Files\Java\jdk1.7.0_51\bin\jar" cvfm sampple.jar manifest.txt -C bin/ .
"c:\Program Files\Java\jdk1.7.0_51\bin\java" -jar sampple.jar com.test.TestJSSJar
