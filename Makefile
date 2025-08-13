CC = gcc
# -std=c99 -O2
CFLAGS = -Wall -Wextra
LDFLAGS = -lm

TARGET = cube

SOURCES = Cube.c

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET) *.o

# run means execute the compiled program
run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run