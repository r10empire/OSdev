ASM=nasm

SRC_DIR=src
BUILD_DIR=build

$(BUILD_DIR)/nasm_floppy.img: $(BUILD_DIR)/nasm.bin
	cp $(BUILD_DIR)/nasm.bin $(BUILD_DIR)/nasm_floppy.img
	truncate -s 1440k $(BUILD_DIR)/nasm_floppy.img

$(BUILD_DIR)/nasm.bin: $(SRC_DIR)/nasm.asm
	$(ASM) $(SRC_DIR)/nasm.asm -f bin -o $(BUILD_DIR)/nasm.bin