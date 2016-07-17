BINARY=wait-for-service
#=======================================================

install: $(BINARY)
    cp $(BINARY) /usr/local/bin/
    chmod a+x /usr/local/bin/$(BINARY)
