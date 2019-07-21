# Libft
An implementation of basic C functions using only standard system call functions. This project is a first project done at 42.

### Installation

Only requires gcc compiler

To build the library.
```sh
$ make
```

This gives a library that called "libft.a", which can be compiled with files that imports the functions from the library

For example, let's say we have a.c which uses functions from the file. The compilation options are
```
$ gcc a.c -lft -L /path/to/libft.a
```
