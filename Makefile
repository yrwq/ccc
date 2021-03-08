TARGET = ccc
PREFIX ?= /usr/local

.PHONY: all py lua sh rust go c install uninstall clean

all: clean
	mkdir -p bin
	install -m755 src/ccc.sh bin/sh_ccc
	install -m755 src/ccc.lua bin/lua_ccc
	install -m755 src/ccc.py bin/py_ccc
	rustc src/ccc.rs -o bin/rust_ccc
	go build src/ccc.go && mv ccc bin/go_ccc
	$(CC) src/ccc.c -o bin/c_ccc

py:
	cp src/ccc.py ccc

sh:
	cp src/ccc.sh ccc

lua:
	cp src/ccc.lua ccc

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
