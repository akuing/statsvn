cd \statsvn\demos\groovy
svn update
svn log -v --xml http://svn.codehaus.org/groovy/ > svn.log
java -mx712m -jar \statsvn\lib\statsvn.jar -threads 15 -xdoc -concurrency-threshold 2000 -tags "^GROOVY_1_0" -verbose -output-dir /statsvn/site/src/xdocs/groovy -title Groovy -viewvc http://svn.groovy.codehaus.org/browse/groovy/trunk ./svn.log .
svn cleanup
