# invoke SourceDir generated makefile for udpStack.pe66
udpStack.pe66: .libraries,udpStack.pe66
.libraries,udpStack.pe66: package/cfg/udpStack_pe66.xdl
	$(MAKE) -f C:\Projects\udpStack\ws_ccs11\udpStack/src/makefile.libs

clean::
	$(MAKE) -f C:\Projects\udpStack\ws_ccs11\udpStack/src/makefile.libs clean

