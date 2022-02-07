# shellanu

## Description

Based on the shell created by [@ImaginationZ](https://github.com/ImaginationZ) (can be found [here](https://github.com/ImaginationZ/Shell)).
This shell has been optimized to work on Darwin systems (but tested also on Linux).

## Building and running

For macOS and Linux use:
```shell
git clone git@github.com:doronz88/shellanu.git
make clean all && ./shell
```

For iOS use:
```shell
git clone git@github.com:doronz88/shellanu.git
./build_ios.sh && ./shell
```

## Example usage

```
[z@DoronZ.local shellanuֿֿֿֿ [1]]$ ls
LICENSE		builtin_cmds.c	common.h	exec.h		lempar.c	shell.h		shellparser.o	shellscanner.l
Makefile	builtin_cmds.h	common.o	exec.o		main.c		shell.o		shellparser.out	shellscanner.o
README.md	builtin_cmds.o	ents.plist	lemon		shell		shellparser.c	shellparser.y
build_ios.sh	common.c	exec.c		lemon.c		shell.c		shellparser.h	shellscanner.h
[z@DoronZ.local shellanuֿֿֿֿ]$ ls | grep exec
exec.c
exec.h
exec.o
[z@DoronZ.local shellanuֿֿֿֿ]$ help
Builtin commands:
- help
- source
- cat
- echo
- pwd
- lasterror
- which
- cd
- exit
- jobs
- fg
- bg
- set
- export
```
