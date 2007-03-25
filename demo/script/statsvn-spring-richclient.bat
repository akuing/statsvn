cd \statsvn\demos\spring-richclient
svn update
svn log -v --xml https://svn.sourceforge.net/svnroot/spring-rich-c > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -tags "^spring-richclient-0.2.1|^spring-richclient-0.2.0" -output-dir /statsvn/site/src/xdocs/spring-richclient -title Spring-RC -viewvc http://svn.sourceforge.net/viewvc/spring-rich-c/trunk/spring-richclient -threads 15 -xdoc -concurrency-threshold 2000 -verbose ./svn.log .
svn cleanup
