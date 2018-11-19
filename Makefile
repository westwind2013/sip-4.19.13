
all:
	@(cd sipgen; $(MAKE))
	@(cd siplib; $(MAKE))

install:
	@(cd sipgen; $(MAKE) install)
	@(cd siplib; $(MAKE) install)
	@test -d $(DESTDIR)/home/westwind/workspace/rosenv/lib/python3.5/site-packages || mkdir -p $(DESTDIR)/home/westwind/workspace/rosenv/lib/python3.5/site-packages
	cp -f sipconfig.py $(DESTDIR)/home/westwind/workspace/rosenv/lib/python3.5/site-packages/sipconfig.py
	cp -f /home/westwind/workspace/sip-4.19.13/sipdistutils.py $(DESTDIR)/home/westwind/workspace/rosenv/lib/python3.5/site-packages/sipdistutils.py
	/home/westwind/workspace/rosenv/bin/python /home/westwind/workspace/sip-4.19.13/mk_distinfo.py "$(DESTDIR)" /home/westwind/workspace/rosenv/lib/python3.5/site-packages/sip-4.19.13.dist-info installed.txt

clean:
	@(cd sipgen; $(MAKE) clean)
	@(cd siplib; $(MAKE) clean)
