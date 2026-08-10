#9. Remove empty lines from a file passed as an argument using Makefile.

clean_up:
	@echo "\nBefore Cleaning\n"
	@bat $(FILE)
	@awk 'NF' "$(FILE)" > "$(FILE).tmp" && mv "$(FILE).tmp" "$(FILE)"
	@echo "Done. File updated successfully."
	@echo "\nAfter Cleaning\n"
	@bat $(FILE)
