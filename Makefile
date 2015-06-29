MAPLE=ruby maple.rb
MARKDOWN_SRCS=$(wildcard content/*)
SSHKEYS=$(wildcard sshkeys/*)

all: index.html sshkeys.pub

sshkeys.pub: $(SSHKEYS)
	cat $(SSHKEYS) > sshkeys.pub

%.html: %.html.erb $(MARKDOWN_SRCS)
	$(MAPLE) $< > $@

view: index.html
	open index.html

clean:
	rm index.html
