# UE4-ExtraFilesPackager
A plugin for UE4 that can copy additional files into your packaged project. (Windows only) 

This UE4 plugin is for people who want to copy files into their packaged game directory in addition to the normally generated game files. For example, it might be useful if you want to include a EULA.txt or Credits.txt in the root of your game directory. 

When you choose "File" -> "Package Game" -> "Windows (64-bit)" or "Windows (32-bit)", this plugin should copy the extra files to the WindowsNoEditor directory. (This plugin is only expected to work on Windows and only if you have NO SPACES in the file-path of your project directory and output directory.)

The "extra files" that it copies should be whatever you put in the "CopyTo_WindowsNoEditor" directory. It works by running a batch script as a "PostBuildStep" that reads an .ini file to get the staging directory.

## Installation
Copy the "ExtraFilesPackager" directory into the "Plugins" directory of your UE4 project. If the "Plugins" directory doesn't exist already, you can create one in the root of your project folder.

## Alternatives
You might want to look into alternative ways to get files into your packaged game to see if they are better suited for you:
https://wiki.unrealengine.com/How_To_Package_Extra_NonUASSET_Files_With_Your_Game
https://answers.unrealengine.com/questions/511029/how-do-you-include-additional-files-or-directories.html
