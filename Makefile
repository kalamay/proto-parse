PEGJS:= ./node_modules/.bin/pegjs

parser.js: proto.peg $(PEGJS)
	$(PEGJS) -o $@ $<

$(PEGJS):
	npm i --only=dev

.PHONY: run
