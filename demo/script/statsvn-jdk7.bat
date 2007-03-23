cd \statsvn\demos\jdk7
svn update
svn log -v --xml https://jdk-jrl-sources.dev.java.net/svn/jdk-jrl-sources/jdk7 > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 18 -xdoc -concurrency-threshold 2000 -exclude "**/*.htaccess" -verbose -output-dir /statsvn/site/src/xdocs/jdk7 -title JDK7 -viewvc https://jdk-jrl-sources.dev.java.net/source/browse/jdk-jrl-sources/jdk7/trunk/ ./svn.log .
svn cleanup
