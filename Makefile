.DEFAULT_GOAL := all

PUML = java -jar ./bin/plantuml.jar
PICS = $(patsubst figs/%.puml, figs/%.png, $(wildcard figs/*.puml))

figs/%.png: figs/%.puml
	$(PUML) $< $@

clean:
	rm -rf figs/*.png

all: $(PICS)
