yum install java-1.7.0-openjdk
yum install wget
ln -s /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.51 /usr/lib/jvm/jdk
total 9800
drwxrwxr-x. 11 root root     4096 Feb 10 12:34 jetty-distribution-9.1.2.v20140210
-rw-r--r--.  1 root root 10029165 Feb 16 09:07 jetty-distribution-9.1.2.v20140210 (2).zip
[root@localhost downloads]# mv jetty-distribution-9.1.2.v20140210 /usr/local/
[root@localhost downloads]# ln -s /usr/local/jetty-distribution-9.1.2.v20140210/ /usr/local/jetty
[root@localhost downloads]#
 export JETTY_HOME=/usr/local/jetty-distribution-8.1.14.v20131031


