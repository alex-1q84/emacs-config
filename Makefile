# init emacs config
#

PWD = $(shell pwd)
EMACS_CONFIG_DIR = ~/.emacs.d
DEST_ETC = $(EMACS_CONFIG_DIR)/etc

all: $(DEST_ETC)
	@echo "Please open the config.org with emacs and execute the following command in emacs:"
	@echo "M-x org-babel-tangle"

$(EMACS_CONFIG_DIR):
	mkdir -p $@

$(DEST_ETC): $(EMACS_CONFIG_DIR)
	ln -s $(PWD)/etc $@

clean:
	rm ~/.emacs.d/etc

.PHONY: all clean
