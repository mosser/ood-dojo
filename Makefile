.DEFAULT_GOAL := all

PUML = java -jar ./bin/plantuml.jar
PICS = $(patsubst src/%.puml, figs/%.png, $(wildcard src/*.puml))

figs/%.png: src/%.puml
	$(PUML) ./$< -o ../figs

clean:
	rm -rf figs/*.png

all: $(PICS)
