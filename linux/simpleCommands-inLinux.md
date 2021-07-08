[uname](https://man7.org/linux/man-pages/man1/uname.1.html) gets the Linux version-related information about the operating system we’re currently using. You can use `-s`, `-r`, `-v`, `-n` so that the terminal shows you exactly what you were looking for.

```
uname -s
```

[shred](https://man7.org/linux/man-pages/man1/shred.1.html) will actually erase a file securely by writing random data over top of the file multiple times.

```
shred -u file.txt 
```

