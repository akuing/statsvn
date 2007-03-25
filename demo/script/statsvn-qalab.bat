cd \statsvn\demos\qalab
svn update
svn log -v --xml https://qalab.svn.sourceforge.net/svnroot/qalab/ > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 5 -xdoc -config-file ./statsvn.properties -concurrency-threshold 2000 -tags "^1.0|^QALAB_0_9_1|^QALAB_0_9_0|^QALAB_0_8_0|^QALAB_0_7_1|^QALAB_0_7_2|^QALAB_0_7"  -output-dir /statsvn/site/src/xdocs/qalab -title QALab -exclude "**/qalab.xml" -viewvc http://qalab.svn.sourceforge.net/viewvc/qalab/trunk ./svn.log .
svn cleanup
