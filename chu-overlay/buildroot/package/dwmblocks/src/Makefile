.POSIX:

PREFIX = /usr
CC = gcc

dwmblocks: dwmblocks.o
	$(CC) $(CFLAGS) dwmblocks.o -lX11 -o dwmblocks
dwmblocks.o: dwmblocks.c config.h
	$(CC) $(CFLAGS) -c dwmblocks.c
clean:
	rm -f *.o *.gch dwmblocks
install: dwmblocks
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f dwmblocks $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmblocks
	cp -f sb-clock $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sb-clock
	cp -f sb-internet $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sb-internet
	cp -f sb-memory $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/sb-memory
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks

.PHONY: clean install uninstall
