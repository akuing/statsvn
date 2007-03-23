cd \statsvn\demos\servicemix
svn update
svn log -v --xml http://svn.apache.org/repos/asf/incubator/servicemix/ > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 8 -xdoc -concurrency-threshold 2000 -tags "^servicemix-3.0|^servicemix-3.0.1|^^servicemix-3.1" -exclude "**/*.htaccess" -verbose -output-dir /statsvn/site/src/xdocs/servicemix -title ServiceMix -viewvc http://svn.apache.org/viewvc/incubator/servicemix/trunk/ ./svn.log .
svn cleanup
