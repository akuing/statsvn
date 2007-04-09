title XMLUnit
cd \statsvn\demos\xmlunit
svn update
svn log -v --xml https://xmlunit.svn.sourceforge.net/svnroot/xmlunit > svn.log
java -mx512m -jar \statsvn\lib\statsvn.jar -threads 18 -xdoc -config-file /statsvn/script/xmlunit.properties -concurrency-threshold 2000 -tags "^r0_6|^v0_8|^v1_0|^PRE_SVN_MIGRATION" -exclude "**/*.htaccess" -verbose -output-dir /statsvn/site/src/xdocs/xmlunit -title xmlUnit -viewvc httphttp://xmlunit.svn.sourceforge.net/viewvc/xmlunit/trunk ./svn.log .
svn cleanup