OBJ = Main_Gstreamer.o
CC = gcc -Wall $(pkg-config --cflags --libs gstreamer-0.10)
OUTPUT_DIR = build



Main_Gstreamer:$(OBJ)
	$(CC) -o $@ $(OUTPUT_DIR)/$< 


#LIB_PATH = -L./lib/

#LIBS = -lgstreamer-1.0  



$(OBJ): %.o: %.c $(OUTPUT_DIR)
	$(CC) -c $< -o $(OUTPUT_DIR)/$@

$(OUTPUT_DIR):
	mkdir $(OUTPUT_DIR)

excute:
	@./Main_Gstreamer

.PHONY : clean
clean:
	rm -rf $(OUTPUT_DIR) Main_Gstreamer