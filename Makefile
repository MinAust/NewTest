CC=gcc
CFLAGS=-c -Wall -O3 -m64
LDFLAGS=-s -m64
SOURCES=hello.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=Hello.Exe

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) $(RES64) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(OBJECTS)
	rm -f $(EXECUTABLE)

