# Software installation

## Visual Studio 

Download from [here](https://visualstudio.microsoft.com/downloads/).
Install the **Desktop development with C++** and make sure to check CLI support.

## CMake

Install CMake from [here](https://cmake.org/) and add it to your PATH at install.

## Terminal

Configure vscode as follows:

```json
"terminal.integrated.profiles.windows": {
  "Command Prompt": {
      "path": [
          "${env:windir}\\Sysnative\\cmd.exe",
          "${env:windir}\\System32\\cmd.exe"
      ],
      "args": ["/k", "G:\\dev\\my-windows-shell\\cmd\\devshell.bat"],
      "icon": "terminal-cmd"
  },
}
```
```json
"terminal.integrated.defaultProfile.windows": "Command Prompt"
```