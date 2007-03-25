"C:\Program Files\7-Zip\7z" a -tzip repocache.zip "%HOMEPATH%/.statsvn/*"
xcopy /Y repocache.zip "target/docs/repocache.zip"
