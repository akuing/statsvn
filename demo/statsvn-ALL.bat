:start

call script/statsvn-jdk7.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-commons-lang.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-servicemix.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-jruby.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-jboss.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-xstream.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-jtreemap.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-objectlabkit.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-antunit.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-ant-svn.bat
cd \statsvn

REM -----------------------------------------------------------------
rem call script/statsvn-ant-http.bat
rem cd \statsvn

REM -----------------------------------------------------------------
rem call script/statsvn-ant-manual4eclipse.bat
rem cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-ant-dotnet.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-synapse.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-subversion.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-spring-richclient.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-ruby.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-qpid.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-qalab.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-pzfilereader.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-mule.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-log4j.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-groovy.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-joda-time.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-hibernate.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-grails.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-ant.bat
cd \statsvn

REM -----------------------------------------------------------------
call script/statsvn-felix.bat
cd \statsvn

REM -----------------------------------------------------------------
call maven site

call rsync-all.bat

goto start