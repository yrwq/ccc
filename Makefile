TARGET = ccc
PREFIX ?= /usr/local

.PHONY: all sh install uninstall clean

all: clean
	$(CC) src/ccc.c -o ccc

cpp: clean
	g++ src/ccc.cpp -o ccc

sh:
	cp src/ccc.sh ccc

rust:
	rustc src/ccc.rs -o ccc

install: $(TARGET)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m755 $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

clean:
	$(RM) $(TARGET)
