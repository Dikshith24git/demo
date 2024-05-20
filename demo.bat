

@echo off

set "sourceFolder=D:\sample"
set "destinationFolder=D:\DEmo"
set "zipFileName=Files.zip"
set "extractedFolderName=ExtractedFiles"

rem Step 1: Copy ZIP file to destination folder
xcopy /y "%sourceFolder%\%zipFileName%" "%destinationFolder%"

rem Step 2: Create a folder for extraction
mkdir "%destinationFolder%\%extractedFolderName%"

rem Step 3: Unzip the ZIP file
powershell -command "Expand-Archive -Path '%destinationFolder%\%zipFileName%' -DestinationPath '%destinationFolder%\%extractedFolderName%'"

rem Step 4: Delete the ZIP file
del /q "%destinationFolder%\%zipFileName%"

del /q "%sourceFolder%\%zipFileName%"