TARGET  = aixlog_example
SHELL = /bin/bash

CXX      = g++
CXXFLAGS = -Wall -Wpedantic -O3 -std=c++17 -Iinclude

OBJ = aixlog_example.o
BIN = aixlog_example

all:	$(TARGET)

reformat:
	clang-format -i include/aixlog.h

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(BIN) $(OBJ) $(LDFLAGS)
	strip $(BIN)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(BIN) $(OBJ) *~

