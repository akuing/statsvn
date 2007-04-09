title Maven2Plugins
cd \statsvn\demos\m2plugins
svn update
svn log -v --xml http://svn.apache.org/repos/asf/maven/plugins/ > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 8 -xdoc -concurrency-threshold 2000 -exclude "**/*.htaccess" -verbose -output-dir /statsvn/site/src/xdocs/m2plugins -title Maven2Plugins -viewvc  http://svn.apache.org/viewvc/maven/plugins/trunk/  ./svn.log .
svn cleanup
