#8. Reads marks for 3 students across 4 subjects, computes the average for each, and displays it — all using shell commands inside a Makefile.


.PHONY: student_marks

student_marks:
	@for i in 1 2 3; do \
		echo ""; \
		echo "Enter marks for Student $$i (4 subjects):"; \
		read -p "  Subject 1: " m1; \
		read -p "  Subject 2: " m2; \
		read -p "  Subject 3: " m3; \
		read -p "  Subject 4: " m4; \
		total=$$((m1 + m2 + m3 + m4)); \
		avg=$$(awk "BEGIN {print $$total / 4}"); \
		echo "-> Student $$i Average: $$avg"; \
	done
