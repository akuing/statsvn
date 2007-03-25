cd \statsvn\demos\testng
svn update
svn log -v --xml http://testng.googlecode.com/svn > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 18 -xdoc -concurrency-threshold 2000 -exclude "**/*.htaccess" -verbose -output-dir /statsvn/site/src/xdocs/testng -title TestNG -viewvc http://testng.googlecode.com/svn/trunk/ ./svn.log .
svn cleanup
