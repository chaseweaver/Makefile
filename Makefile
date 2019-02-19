COMPILER=g++
CFLAGS=-Wall -Wextra -Wpedantic
LDFLAGS=

DIR=$(notdir $(CURDIR))
SOURCES=$(wildcard *.cpp)
OBJECTS=$(SOURCES:.c=.o)

all: $(DIR)
	./$(DIR)

$(DIR): $(OBJECTS)
	$(COMPILER) $(CFLAGS) $(OBJECTS) -o $(DIR)

$(OBJECTS): $(SOURCES)
	$(COMPILER) $(CFLAGS) -c $< -o $@

clean:
	rm $(DIR) $(OBJECTS)
