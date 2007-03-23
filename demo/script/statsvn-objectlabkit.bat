cd \statsvn\demos\objectlabkit
svn update
svn log -v --xml https://objectlabkit.svn.sourceforge.net/svnroot/objectlabkit/ > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 5 -xdoc -concurrency-threshold 2000 -tags "^1.0.1|^1.1.0"  -output-dir /statsvn/site/src/xdocs/objectlabkit -title ObjectLabKit -exclude "**/qalab.xml" -viewvc http://objectlabkit.svn.sourceforge.net/viewvc/objectlabkit/trunk ./svn.log .
