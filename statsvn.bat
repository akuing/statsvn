svn log -v --xml https://svn.sourceforge.net/svnroot/statsvn/ > svn.log
rem mkdir qalab\target\docs\statsvn
java -jar statsvn\dist\statsvn.jar -xdoc -verbose -output-dir statsvn\site\statsvn -tags "^0.2.0|^0.1.3|^0.1.2|^0.0.9" -title StatSVN -exclude "**/qalab.xml|**/*.pdf|**/LICENSE*" -viewvc http://svn.sourceforge.net/viewvc/statsvn/trunk ./svn.log .