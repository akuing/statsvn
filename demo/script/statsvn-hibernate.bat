cd \statsvn\demos\hibernate
svn update
svn log -v --xml http://anonsvn.jboss.org/repos/hibernate > svn.log
java -jar \statsvn\lib\statsvn.jar -threads 25 -xdoc -concurrency-threshold 2000 -tags "^v30final|^v31final|^v32final|^v321|^v322" -verbose -output-dir /statsvn/site/src/xdocs/hibernate -title Hibernate3 -viewvc http://viewvc.jboss.org/cgi-bin/viewvc.cgi/hibernate/trunk/Hibernate3 ./svn.log .
svn cleanup
