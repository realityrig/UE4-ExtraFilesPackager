::the 1st and 2nd command line arguments should be ProjectDir and PluginDir
set ProjectDir=%1
set PluginDir=%2
::set GameIni to the path of Game.ini in the "Saved" directory
set GameIni=%ProjectDir%\Saved\Config\Windows\Game.ini

::Set LineString to the line in the INI file that contains the string "StagingDirectory"
for /f "tokens=1" %%A in ('"findstr StagingDirectory %GameIni%"') do set LineString=%%A
echo %LineString%

::Set the variable "StagingDir" to the 2nd string found when splitting the line by the quote character 
for /f delims^=^"^ tokens^=2  %%a in ("%LineString%") do set StagingDir=%%a
echo %StagingDir%

::Format the StagingDir by replacing the / slashes with \ slashes
set "StagingDirFormatted=%StagingDir:/=\%"

::Execute the commands to make the WindowsNoEditor folder, and copy files from the Generated folder in this plugin into WindowsNoEditor
mkdir %StagingDirFormatted%\WindowsNoEditor\
xcopy %PluginDir%\CopyTo_WindowsNoEditor %StagingDirFormatted%\WindowsNoEditor /s /e