[uname](https://man7.org/linux/man-pages/man1/uname.1.html) gets the Linux version-related information about the operating system we’re currently using. You can use `-s`, `-r`, `-v`, `-n` so that the terminal shows you exactly what you were looking for.

```
uname -s
```

[shred](https://man7.org/linux/man-pages/man1/shred.1.html) will actually erase a file securely by writing random data over top of the file multiple times.

```
shred -u file.txt 
```

## FIND

```
find . -name filename
```
* Find those over-sized files

```
find . -type f -size +500M
```

## AWK - TEE

* Remove duplicate lines in file (Uses awk to output unique lines of file.txt into a file output.txt , using tee.)

```
awk ‘!seen[$0]++’ file.txt | tee output.txt
```

## GREP

* Uses grep to search for "tepe" within all files recursively, ignoring case, outputting the files with matches.

```
grep -lir "tepe" *
```
* Print lines containing ‘secret’ + (3 lines before + 3 lines after) + COLOUR

```
grep -C 3 'secret' ./file_with_secrets.txt --color
```

## Mixer

* Show 10 largest open files
```
lsof / | awk '{ if($7 > 1048576) print $7/1048576 "MB" " " $9 " " $1 }' | sort -n -u | tail
```
* Run the last command
```
!! or $ sudo !!
```
* Run the last command beginning with ‘gr’

```
!gr
```

* Find and Remove files

```
find . -name "*.txt" -delete
```

* Change all spaces in the filenames in the current directory to an underscore (no one wants a file name with spaces.txt)==> Uses mv and a for-loop to move (effectively rename) all files with spaces.

```
for i in *; do mv "$i" ${i// /_};done
```


## SED
* Remove lines that contain ‘secret’ (Uses sed to remove lines from filename.txt)
```
sed "/secret/Id" filename.txt // case insensitive
```
```
sed "/secret/d" filename.txt // case sensitive
```


## Extra Resources 

[Welcome to bashoneliners.com, a growing collection of practical and well-explained Bash tips and tricks.](http://www.bashoneliners.com/oneliners/popular/)

[A collection of handy Bash One-Liners and terminal tricks for data processing and Linux system maintenance.](https://onceupon.github.io/Bash-Oneliner/)

[Sed Command in Linux/Unix with examples](https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/)

[AWK command in Unix/Linux with examples](https://www.geeksforgeeks.org/awk-command-unixlinux-examples/)