# Project Makefile

default: all

# Targets

.PHONY: all

.PHONY: clean
clean:
# Remove temporary files
	@rm --force tmp.*
	@rm --force *.html
	@rm --force *.log
	@rm --force *.tmp
	@rm --force *.txt
# Clean doc directory
	@rm --force doc/tmp.*    # Remove generated temporary files
	@rm --force doc/*.1      # Remove generated manpages
	@rm --force doc/*.3      # Remove generated manpages
	@rm --force doc/*.html   # Remove generated HTML files
	@rm --force doc/*.log    # Remove generated log files
	@rm --force doc/*.tmp	 # Remove generated temporary files
	@rm --force doc/*.txt    # Remove generated text files

# Convert from Pandoc markdown to Github markdown.
test.md: xt/test.md
	pandoc --standalone --from=markdown --to=gfm xt/test.md >test.md

test.html: xt/test.md
	pandoc --standalone --from=markdown --to=html5 xt/test.md >test.html
