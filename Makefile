# Recommended by GNU Make manual
.SUFFIXES:
.SUFFIXES: .cpp .o

# Project Name -> name of executable
PROJ_NAME = my_project

# Where the source code lives
SRC_DIR = src/
# Where the compilation units will be created
BLD_DIR = build/
# Tell make to look in SRC_DIR for source files
VPATH=src:$(SRC_DIR)

# List of source files to compile
SOURCES = main.cpp

# Auto-generate the source files' respective .o file names
# as targets.
# Example: main.cpp -> build/main.o
OBJECTS = $(SOURCES:%.cpp=$(BLD_DIR)%.o)

# Flags to pass to compiler
CXXFLAGS = -c -Wall -std=c++11
# Linker flags & libraries
LDFLAGS =

# By default, compile the release target
all: $(PROJ_NAME)

debug: CXXFLAGS += -g
debug: $(PROJ_NAME)

$(PROJ_NAME): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@ $(LDFLAGS)

$(BLD_DIR)%.o: %.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -f $(OBJECTS)
	rm -f $(PROJ_NAME)
