# hello-world
A trivial hello world C library for testing purposes

## Building

To build the library and example program:

```bash
make
```

This will create:
- `libhello.a` - The static library
- `example` - An example program that uses the library

## Usage

Run the example program:

```bash
./example
```

Output:
```
Hello, World!
```

## Cleaning

To clean build artifacts:

```bash
make clean
```

## API

The library provides a single function:

```c
void hello_world(void);
```

Include `hello.h` in your C programs and link against `libhello.a` to use it.
