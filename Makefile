# Macros
PANDOC := pandoc --from=markdown --to=latex
TARGET := $(HW).pdf
ARTIFACTS := *.pdf

# Build the PDF file from source
default: $(TARGET)

$(TARGET): $(HW).md
	$(PANDOC) --output=$(HW).pdf meta.md $(HW).md

# Clean all PDF files
.PHONY: clean
clean:
	rm -f $(ARTIFACTS)
