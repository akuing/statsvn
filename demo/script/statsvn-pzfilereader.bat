cd \statsvn\demos\pzfilereader
svn update
svn log -v --xml https://pzfilereader.svn.sourceforge.net/svnroot/pzfilereader/ > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 25 -xdoc -concurrency-threshold 2000 -tags "^release_2.2.0|^Root_v2_0_0|^Root_v1_0_5|^Root_V2_1_0|^Root_V2_2_0_0/" -output-dir /statsvn/site/src/xdocs/pzfilereader  -title PZFileReader -exclude "**/SampleCSV.csv|**/qalab.xml" -viewvc http://pzfilereader.svn.sourceforge.net/viewvc/pzfilereader/trunk ./svn.log .
svn cleanup
