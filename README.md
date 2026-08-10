# Make & Makefiles Learning Project

This repository contains a structured learning journey for understanding and writing Makefiles, following a 7-day plan from fundamentals to real-world usage, plus a series of practical assignments.

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
├── 3_phony/                   # Day 3: Phony targets
│   ├── Makefile               # Phony targets example (clean, build)
│   ├── add.h                  # Header for add function
│   ├── add.cpp                # Implementation of add function
│   ├── print_add.cpp          # Main program using add
│   ├── print_add              # Compiled binary
│   ├── *.o                    # Object files
│   └── clean                  # Clean target artifact
└── assignment/                # Practical Makefile assignments (9 tasks)
    ├── structure.sh           # Script to create task directories
    ├── task_1/                # Basic "Hello, World!" target
    ├── task_2/                # Print + clean targets
    ├── task_3/                # Execute shell script target
    ├── task_4/                # Parameterized target (NAME variable)
    ├── task_5/                # Zip archive creation target
    ├── task_6/                # Calculator with operations (add, sub, mul, div)
    ├── task_7/                # Delete empty files in directory
    ├── task_8/                # Student marks average calculator
    └── task_9/                # Remove empty lines from file
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

## Assignment Tasks

| Task | Description | Key Concepts |
|------|-------------|--------------|
| **task_1** | Print "Hello, World!" target | Basic target syntax |
| **task_2** | Print + clean (clear terminal) | Multiple targets, `.PHONY` |
| **task_3** | Execute shell script | Running external scripts, permissions |
| **task_4** | Parameterized greeting (`make sayhello NAME=...`) | Variable passing, `$$` escaping |
| **task_5** | Create zip archive from file list | Variables, file lists, shell commands |
| **task_6** | Calculator (add, sub, mul, div) | Default values (`?=`), conditionals, arithmetic |
| **task_7** | Delete empty files | `find -empty -delete`, `@` silencing |
| **task_8** | Student marks average | Loops, `read`, arithmetic, `awk` |
| **task_9** | Remove empty lines from file | `awk 'NF'`, temp file pattern, `FILE` variable |

## Building the Project

```bash
# Build the main project
make

# Run the program
./output

# Clean build artifacts
make clean
```

## Running Assignments

```bash
# Task 1: Basic print
cd assignment/task_1 && make print

# Task 2: Print and clean
cd assignment/task_2 && make print && make clean

# Task 3: Execute shell script
cd assignment/task_3 && make shell

# Task 4: Parameterized greeting
cd assignment/task_4 && make sayhello NAME="Mihir"

# Task 5: Create zip
cd assignment/task_5 && make zip

# Task 6: Calculator
cd assignment/task_6 && make add x=10 y=5
cd assignment/task_6 && make mul x=6 y=7

# Task 7: Clean empty files
cd assignment/task_7 && make clean

# Task 8: Student averages
cd assignment/task_8 && make student_marks

# Task 9: Remove empty lines
cd assignment/task_9 && make clean_up FILE=file.txt
```

## Resources

- [GNU Make Manual](https://www.gnu.org/software/make/manual/make.html)
- [makefiletutorial.com](https://makefiletutorial.com/)
- `man make`