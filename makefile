# Makefile for HuffCompress - Huffman Coding File Compressor/Decompressor

# Compiler
CXX = g++

# Flags
CXXFLAGS = -Wall -Wextra -std=c++11

# Targets
TARGET_ENCODE = encode
TARGET_DECODE = decode

# Source files
SRC_HUFFMAN = huffman.cpp
SRC_ENCODE = encode.cpp
SRC_DECODE = decode.cpp

# Header files
HEADERS = huffman.hpp

# Build the encode executable
$(TARGET_ENCODE): $(SRC_ENCODE) $(SRC_HUFFMAN) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $(TARGET_ENCODE) $(SRC_ENCODE) $(SRC_HUFFMAN)

# Build the decode executable
$(TARGET_DECODE): $(SRC_DECODE) $(SRC_HUFFMAN) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $(TARGET_DECODE) $(SRC_DECODE) $(SRC_HUFFMAN)

# Alias for building encode
encode: $(TARGET_ENCODE)

# Alias for building decode
decode: $(TARGET_DECODE)

# Clean up build files
clean:
	rm -f $(TARGET_ENCODE) $(TARGET_DECODE)

# PHONY targets
.PHONY: clean encode decode
