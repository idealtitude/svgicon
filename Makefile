FILE_NAME ?= icon
SVGO = svgo
MAGICK = magick
INPUT = $(FILE_NAME)-1024x1024.svg
OUTPUT_OPT = $(FILE_NAME)_opt-104x1024.svg
OUTPUT_OPT_FLAGS = --indent 4 --pretty --final-newline --quiet
OUTPUT_PNG = $(FILE_NAME)
OUTPUT_DIR = icons
SVG2PNG_FLAGS = -background none
RESIZE_OUTPUT = $(OUTPUT_DIR)/$(OUTPUT_PNG)-1024x1024.png
RESIZE_FLAGS = -resize

.PHONY: all optimize svg2png resize clean

all: cleanall optimize svg2png resize
	@echo All done!

optimize: $(OUTPUT_DIR)
	@echo Optimizing svg file
	@$(SVGO) $(INPUT) -o $(OUTPUT_DIR)/$(OUTPUT_OPT) $(OUTPUT_OPT_FLAGS)

svg2png: $(OUTPUT_DIR)
	@echo Converting svg file to png
	@$(MAGICK) $(SVG2PNG_FLAGS) $(INPUT) $(OUTPUT_DIR)/$(OUTPUT_PNG)-1024x1024.png
	@echo Copying svg source to icons folder
	@cp $(INPUT) $(OUTPUT_DIR)/$(INPUT)

resize: $(OUTPUT_DIR)
	@echo Creating resized copies of the png file
	@$(MAGICK) $(OUTPUT_DIR)/$(OUTPUT_PNG)-1024x1024.png $(RESIZE_FLAGS) x512 $(OUTPUT_DIR)/$(OUTPUT_PNG)-1024x1024.png
	@$(MAGICK) $(OUTPUT_DIR)/$(OUTPUT_PNG)-1024x1024.png $(RESIZE_FLAGS) x256 $(OUTPUT_DIR)/$(OUTPUT_PNG)-256x256.png
	@$(MAGICK) $(OUTPUT_DIR)/$(OUTPUT_PNG)-1024x1024.png $(RESIZE_FLAGS) x128 $(OUTPUT_DIR)/$(OUTPUT_PNG)-128x128.png
	@$(MAGICK) $(OUTPUT_DIR)/$(OUTPUT_PNG)-1024x1024.png $(RESIZE_FLAGS) x64 $(OUTPUT_DIR)/$(OUTPUT_PNG)-64x64.png
	@$(MAGICK) $(OUTPUT_DIR)/$(OUTPUT_PNG)-1024x1024.png $(RESIZE_FLAGS) x32 $(OUTPUT_DIR)/$(OUTPUT_PNG)-32x32.png

$(OUTPUT_DIR):
	@mkdir -p $@

clean:
	@echo Cleaning $(OUTPUT_DIR)
	@$(RM) -r $(OUTPUT_DIR)/*

cleanall: clean
	@echo Removing $(OUTPUT_DIR)
	@$(RM) -rf $(OUTPUT_DIR)
