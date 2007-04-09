title AntSVN
cd \statsvn\demos\ant-svn
svn update
svn log -v --xml http://svn.apache.org/repos/asf/ant/antlibs/svn > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 8 -xdoc -concurrency-threshold 2000 -exclude "**/*.htaccess" -verbose -output-dir /statsvn/site/src/xdocs/ant-svn -title Ant-SVN -viewvc http://svn.apache.org/viewvc/ant/antlibs/svn/trunk/ ./svn.log .
svn cleanup
