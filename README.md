# scipm.file_info

scipm.file_info is a [scipm](https://github.com/aminassian/scipm) package

print file info to output panel

## install

```
cd myScipmProject
scipm install scipm.file_info --save
scipm build
[restart SciTE]
```

## tool menu

- add tool menu ``ⓘ File Info`` (tools and context menu)

## props SciTE[Global|User].properties

```
# add line ``cd "$(FileDir)"``
scipm.file_info.config.showCd="[1|0]"

# if WIN : add line ``cd "/path/to/dir"`` (helpful with ``Git Bash`` https://msysgit.github.io/)
scipm.file_info.config.showCdWinGitBash="[1|0]"

# if WIN : add line ``cd "/media/path/to/dir"`` (helpful with ``MobaXterm`` http://mobaxterm.mobatek.net/)
scipm.file_info.config.showCdWinMobaxterm="[1|0]"
```

## lua functions

```
scipm.file_info.exec();
```

## output example

```
--------------------------------------------------------------------------------
File[Path|Dir|NameExt|Name|Ext]
--------------------------------------------------------------------------------
C:\scipm.file_info\README.md
C:\scipm.file_info
README.md
README
md

cd "C:\scipm.file_info\"
/C/scipm.file_info/README.md
```

