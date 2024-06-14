# HuffCompressDecompress - Huffman Coding File Compressor/Decompressor

HuffCompressDecompressor is a file compression/decompression tool implemented using the Huffman coding algorithm in C++. This project aims to reduce file sizes efficiently by leveraging Huffman encoding and decoding techniques.

## Features
- Efficient file compression using Huffman coding.
- Supports encoding and decoding of various file types.
- Implemented in C++ for performance optimization.

## Project Structure
- `huffman.hpp`: Header file containing the Huffman coding class declarations.
- `huffman.cpp`: Implementation of the Huffman coding algorithms.
- `encode.cpp`: Main program to encode (compress) files.
- `decode.cpp`: Main program to decode (decompress) files.
- `inputFile.txt`: Sample input file to be compressed.
- `inputFile2.txt`: Sample input file to be compressed.
- `compressedFile.huf`: Resulting compressed file.
- `outputFile.txt`: Output file after decompression.
- `outputFile2.txt`: Output file after decompression.

## Compilation Instructions
To compile the project, you need to have `g++` installed on your system. The project comes with a Makefile to simplify the compilation process.

### Steps to Compile:
1. **Clone the repository**:
    ```sh
    git clone https://github.com/yourusername/HuffCompress.git
    cd HuffCompress
    ```

2. **Compile the encoder**:
    ```sh
    make encode
    ```

3. **Compile the decoder**:
    ```sh
    make decode
    ```

## Usage Instructions
After compiling, you can use the executables to encode and decode files.

### Encoding (Compressing a file)
To compress or decompress a file, run the following command:
```sh
./encode inputFile.txt compressedFile.huf
```
### Decoding (Decompressing a file)
To decompress a file, run the following command:
```sh
./decode compressedFile.huf outputFile.txt