# 3D Rotating Cubes

A simple C program that renders three rotating 3D cubes in ASCII art using terminal output.

## Description

This project displays three animated cubes of different sizes rotating simultaneously in 3D space. Each cube is rendered using different ASCII characters for its faces:

- **Large Cube**: Uses `@`, `*`, `,`, `\`, `/`, `.`
- **Medium Cube**: Uses `@`, `*`, `~`, `#`, `/`, `.`
- **Small Cube**: Uses `@`, `*`, `~`, `#`, `/`, `.`

The cubes rotate around three axes (A, B, C) at different speeds, creating a mesmerizing 3D animation effect in your terminal.
## demonstration

./demonstratinal-image.png

## Features

- Real-time 3D rotation animation
- Three cubes of different sizes
- ASCII art rendering
- Cross-platform compatibility (Linux/Windows)
- Z-buffer depth testing for proper 3D rendering

## Requirements

- GCC compiler
- Math library (`libm`)
- Terminal that supports ANSI escape sequences

## Building

Use the provided Makefile to build the project:

```bash
make all
```

Or compile manually:

```bash
gcc -Wall -Wextra Cube.c -o cube -lm
```

## Running

Run the compiled program:

```bash
make run
```

Or directly:

```bash
./cube
```

Press `Ctrl+C` to exit the animation.

## Makefile Commands

- `make all` - Build the executable
- `make run` - Build and run the program
- `make clean` - Remove the executable and object files

## Technical Details

- **Resolution**: 160x44 characters
- **3D Projection**: Perspective projection with z-buffering
- **Animation**: Continuous rotation using trigonometric functions
- **Frame Rate**: ~60 FPS (8ms delay between frames)

The program uses 3D rotation matrices and perspective projection to transform 3D coordinates to 2D screen coordinates, creating the illusion of rotating cubes