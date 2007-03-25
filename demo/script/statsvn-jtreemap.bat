cd \statsvn\demos\jtreemap
svn update
svn log -v --xml https://jtreemap.svn.sourceforge.net/svnroot/jtreemap/ > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 5 -xdoc -config-file ./statsvn.properties -concurrency-threshold 2000 -tags "^1.0.1|^1.1.0"  -output-dir /statsvn/site/src/xdocs/jtreemap -title JTreeMap -exclude "**/qalab.xml" -viewvc http://jtreemap.svn.sourceforge.net/viewvc/jtreemap/trunk ./svn.log .
svn cleanup
