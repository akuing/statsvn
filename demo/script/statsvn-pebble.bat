title Pebble
cd \statsvn\demos\pebble
svn update
svn log -v --xml https://pebble.svn.sourceforge.net/svnroot/pebble/ > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 5 -xdoc -config-file /statsvn/script/pebble.properties -concurrency-threshold 2000 -tags "^2.0.0|^2.0.1"  -output-dir /statsvn/site/src/xdocs/pebble -title Pebble -exclude "**/qalab.xml" -viewvc http://pebble.svn.sourceforge.net/viewvc/pebble/trunk ./svn.log . > pebble.log
svn cleanup
