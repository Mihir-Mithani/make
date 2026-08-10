x ?= 0
y ?= 0

.PHONY: add sub mul div help

default:
	echo "=== Makefile Calculator ==="
	echo "Usage: make [operation] x=[num] y=[num]"
	echo "Operations: add, sub, mul, div"

add:
	@echo "Result: $$(( $(x) + $(y) ))"

sub:
	@echo "Result: $$(( $(x) - $(y) ))"

mul:
	@echo "Result: $$(( $(x) * $(y) ))"

div:
	@if [ "$(y)" -eq 0 ]; then \
		echo "Error: Division by zero is not allowed."; \
		exit 1; \
	fi
	@echo "Result: $$(awk 'BEGIN {print $(x) / $(y)}')";
