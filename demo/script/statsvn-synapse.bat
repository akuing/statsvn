cd \statsvn\demos\synapse
svn update
svn log -v --xml http://svn.apache.org/repos/asf/webservices/synapse/java > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -tags "^M1|^M2|^0.91|^0.90A1|^0.90RC1" -output-dir /statsvn/site/src/xdocs/synapse -title Synapse -viewvc http://svn.apache.org/viewvc/webservices/synapse/trunk/java/ -threads 5 -xdoc -concurrency-threshold 2000 -verbose ./svn.log .
svn cleanup
