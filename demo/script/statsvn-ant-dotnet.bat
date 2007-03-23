cd \statsvn\demos\ant-dotnet
svn update
svn log -v --xml http://svn.apache.org/repos/asf/ant/antlibs/dotnet > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 8 -xdoc -concurrency-threshold 2000 -tags "^10|^10_B1|^preview_20041022" -exclude "**/*.htaccess" -verbose -output-dir /statsvn/site/src/xdocs/ant-dotnet -title Ant-DotNet -viewvc http://svn.apache.org/viewvc/ant/antlibs/dotnet/trunk/ ./svn.log .
svn cleanup
