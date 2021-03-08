TARGET = ccc
PREFIX ?= /usr/local

.PHONY: all sh install uninstall clean

all:
	$(CC) src/ccc.c -o ccc

sh:
	mkdir -p $(PREFIX)/bin
	install -m755 $(TARGET) $(PREFIX)/bin/$(TARGET)

install: $(TARGET)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m755 $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

clean:
	$(RM) $(TARGET)
