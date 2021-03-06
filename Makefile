INSTALL = /usr/bin/install -c

# Installation directories
prefix = ${DESTDIR}/usr
exec_prefix = ${prefix}
mandir = ${prefix}/share/man/man1
bindir = ${exec_prefix}/bin
etcdir = ${DESTDIR}/etc

all:

clean:

install:
	$(INSTALL) -d -m 755 $(bindir)
	$(INSTALL) -m 755 abcde $(bindir)
	$(INSTALL) -m 755 cddb-tool $(bindir)
	$(INSTALL) -m 755 abcde-musicbrainz-tool $(bindir)
	$(INSTALL) -d -m 755 $(mandir)
	$(INSTALL) -m 644 abcde.1 $(mandir)
	$(INSTALL) -m 644 cddb-tool.1 $(mandir)
	$(INSTALL) -d -m 755 $(etcdir)
	$(INSTALL) -m 644 abcde.conf $(etcdir)

