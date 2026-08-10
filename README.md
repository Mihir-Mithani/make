# Make & Makefiles Learning Project

This repository contains a structured learning journey for understanding and writing Makefiles, following a 7-day plan from fundamentals to real-world usage.

## Directory Structure

```
make/
├── PLAN.md                    # 7-day learning plan with checkpoints
├── Makefile                   # Main project Makefile (C++ example)
├── main.cpp                   # Main entry point
├── message.h                  # Header file for message class
├── message.cpp                # Implementation of message class
├── output                     # Compiled binary
├── 1_sample/                  # Day 1: Basic Makefile example
│   └── Makefile               # Simple "hello world" target
├── 2_varibles/                # Day 3: Variables in Makefiles
│   ├── Makefile               # Variable demonstration
│   ├── main.cpp
│   ├── message.cpp
│   ├── message.h
│   └── output
└── 3_phony/                   # Day 3: Phony targets
    ├── Makefile               # Phony targets example (clean, build)
    ├── add.h                  # Header for add function
    ├── add.cpp                # Implementation of add function
    ├── print_add.cpp          # Main program using add
    ├── print_add              # Compiled binary
    ├── *.o                    # Object files
    └── clean                  # Clean target artifact
```

## Learning Progress

### Day 1 — Fundamentals ✓
- Basic rule syntax: `target: dependencies` + tab-indented commands
- First Makefile in `1_sample/Makefile`

### Day 2 — Dependencies & Rebuild Logic ✓
- Multiple targets with dependencies
- Timestamp-based rebuilding
- Main project `Makefile` demonstrates this

### Day 3 — Variables & Phony Targets ✓
- Variables: `CC`, `CFLAGS`, automatic variables (`$@`, `$<`, `$^`)
- Phony targets: `clean`, `run`
- Examples in `2_varibles/Makefile` and `3_phony/Makefile`

### Day 4 — Automatic Variables & Pattern Rules
- Learning `$@`, `$<`, `$^` automatic variables
- Pattern rules (`%.o: %.c`)

### Day 5 — Real Project Practice
- Complete Makefile with variables, pattern rules, phony targets

### Day 6 — Reading Real-World Makefiles
- Analyzing open-source Makefiles

### Day 7 — Advanced Topics
- Conditionals, functions, multi-directory projects, parallel builds

## Building the Project

```bash
# Build the main project
make

# Run the program
./output

# Clean build artifacts
make clean
```

## Resources

- [GNU Make Manual](https://www.gnu.org/software/make/manual/make.html)
- [makefiletutorial.com](https://makefiletutorial.com/)
- `man make`