About
======

This is a simple Makefile that I've decided to publish here for reference and as a backup. This is for very small C/C++ projects and exercises that I haven't yet decided to migrate to CMake.

This Makefile enforces a small degree of organization. Your source code will live in a directory named `src` and the respective `.o` files will live in a directory named `build`. You will have to create these directories (`mkdir src build`). The project structure looks a little bit like this:

```
├── Makefile
├── README.md
├── build
│   └── main.o
├── my_project
└── src
    └── main.cpp
```

You can, of course, opt out of this by editing the Makefile.

Usage
======

1. Copy the contents of the Makefile (I'd imagine cloning this repo is a bit overkill) into a blank file, name it `Makefile`.
1. Create your `build` and `src` folders (`mkdir build src`).
1. The Makefile will try to compile `main.cpp` by default, you can edit the file(s) listed in the `SOURCES` variable of the Makefile to change this to include other files. 
1. Edit some of the variables in the Makefile to accommodate your project (Probably at least change the `PROJ_NAME` variable to the name of your project).
1. Run `make` or `make debug` (to compile with `-g`) in the root of your project.
1. Run `make clean` to clean out the old compiled files if you want to rebuild.