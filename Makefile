TARGET = ccc
PREFIX ?= /usr/local

.PHONY: all sh install uninstall clean

all: clean
	mkdir -p bin
	install -m755 src/ccc.sh bin/sh_ccc
	rustc src/ccc.rs -o bin/rust_ccc
	go build src/ccc.go && mv ccc bin/go_ccc
	$(CC) src/ccc.c -o bin/c_ccc

sh:
	cp src/ccc.sh ccc

rust:
	rustc src/ccc.rs -o ccc

go:
	go build src/ccc.go

c:
	$(CC) src/ccc.c -o ccc

install: $(TARGET)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m755 $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

clean:
	$(RM) -rf bin
	$(RM) $(TARGET)
