# Learning Plan: Make & Makefiles

**Goal:** Be able to write and understand Makefiles for real C/C++/general projects.
**Estimated time:** 5–7 days, ~30–60 min/day.

---

## Day 1 — Fundamentals
- [ ] Read: what `make` is and why it exists (build automation, dependency tracking)
- [ ] Learn the basic rule syntax:
  ```
  target: dependencies
  	command
  ```
- [ ] **Memorize the #1 gotcha**: commands must be indented with a **Tab**, not spaces
- [ ] Write and run your first Makefile:
  ```makefile
  hello:
  	echo "Hello, World!"
  ```
- [ ] Try running `make`, `make hello`, and a nonexistent target — observe the errors

**Checkpoint:** Can explain what a target, dependency, and recipe are.

---

## Day 2 — Dependencies & Rebuild Logic
- [ ] Create a Makefile with multiple targets that depend on each other
- [ ] Understand timestamp-based rebuilding (make only rebuilds stale targets)
- [ ] Test it: touch a file, run `make`, observe what rebuilds and what doesn't
- [ ] Practice:
  ```makefile
  app: main.o utils.o
  	gcc -o app main.o utils.o

  main.o: main.c
  	gcc -c main.c

  utils.o: utils.c
  	gcc -c utils.c
  ```

**Checkpoint:** Can predict which targets rebuild after editing a specific file.

---

## Day 3 — Variables & Phony Targets
- [ ] Learn variable syntax: `CC = gcc`, `CFLAGS = -Wall -g`, usage with `$(CC)`
- [ ] Learn `.PHONY` and why it matters (targets like `clean`, `test`, `run`)
- [ ] Add to your practice Makefile:
  ```makefile
  .PHONY: clean run

  clean:
  	rm -f *.o app

  run: app
  	./app
  ```

**Checkpoint:** Can add `clean` and `run` targets to any Makefile from memory.

---

## Day 4 — Automatic Variables & Pattern Rules
- [ ] Learn the key automatic variables: `$@` (target), `$<` (first dependency), `$^` (all dependencies)
- [ ] Learn pattern rules (`%.o: %.c`) to avoid repeating rules per file
- [ ] Rewrite Day 2's Makefile using a pattern rule:
  ```makefile
  %.o: %.c
  	$(CC) $(CFLAGS) -c $< -o $@
  ```

**Checkpoint:** Can compress a multi-file Makefile into one pattern rule.

---

## Day 5 — Real Project Practice
- [ ] Pick a real small project (or create one): 3–4 source files
- [ ] Write a complete Makefile from scratch with:
  - [ ] Variables (`CC`, `CFLAGS`, `SRC`, `OBJ`)
  - [ ] A pattern rule for compilation
  - [ ] `all`, `clean`, `run` phony targets
  - [ ] Automatic variables where appropriate
- [ ] Break it on purpose (wrong dependency, missing tab, etc.) and fix it

**Checkpoint:** Can build a working Makefile for a small project unaided.

---

## Day 6 — Reading Real-World Makefiles
- [ ] Find a Makefile from a real open-source repo (start simple, avoid huge autotools-generated ones)
- [ ] Identify: variables, phony targets, pattern rules, included files (`include`)
- [ ] Look up any unfamiliar functions (`$(wildcard ...)`, `$(patsubst ...)`, `$(shell ...)`)
- [ ] Take notes on anything confusing to revisit

**Checkpoint:** Can read an unfamiliar Makefile and explain what `make` and `make clean` would do.

---

## Day 7 — Advanced Topics (optional, as needed)
- [ ] Conditionals (`ifeq`, `ifneq`)
- [ ] Functions: `$(wildcard)`, `$(patsubst)`, `$(shell)`, `$(foreach)`
- [ ] Multi-directory projects and recursive `make`
- [ ] `include` for splitting Makefiles across files
- [ ] Parallel builds (`make -j`)

---

## Resources
- `man make` — terse but authoritative reference
- **GNU Make Manual** (free, online) — the definitive in-depth resource
- makefiletutorial.com — example-driven, beginner-friendly
- Real-world Makefiles from small open-source C/C++ projects on GitHub

## Practice Project Ideas
1. Simple "Hello World" C program with clean/run targets
2. Multi-file C project (main + 2–3 modules)
3. A Python project Makefile (lint, test, format, run — no compilation, just command shortcuts)
4. Recreate a Makefile for a small open-source tool you already use
