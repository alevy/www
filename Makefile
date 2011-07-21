MAPLE=ruby maple.rb
MARKDOWN_SRCS=$(wildcard content/*)

all: index.html
	
%.html: %.html.erb $(MARKDOWN_SRCS)
	$(MAPLE) $< > $@

view: index.html
	open index.html
	
clean:
	rm index.html
