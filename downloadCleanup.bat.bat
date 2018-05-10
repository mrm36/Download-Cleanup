REM Remove files older than 30 days


for /d %%G in ("C:\Users\*") DO (
  cd "%%G"
  forfiles /p "%%G\Downloads" /s /m *.* /c "cmd /c Del @path" /d -30
  echo Deleted files in %%G\Downloads
  cd ..
 )



