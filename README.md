# Software installation

## Visual Studio 

Download from [here](https://visualstudio.microsoft.com/downloads/).
Install the **Desktop development with C++** and make sure to check CLI support.

## CMake

Install CMake from [here](https://cmake.org/) and add it to your PATH at install.

## Terminal

Install WezTerm from [here](https://wezterm.org/index.html).

```ps1
$src = Join-Path $(Get-Item .).FullName wezterm
$tgt = Join-Path $env:userprofile .config/wezterm
Copy-Item -Path $src -Destination $tgt -Recurse
```

Install fonts:

- [Fira Code NerdFonts](https://www.nerdfonts.com/)
- [Monaspace Radon](https://github.com/githubnext/monaspace/releases/tag/v1.301)
- [Monaspace Krypton](https://github.com/githubnext/monaspace/releases/tag/v1.301)
