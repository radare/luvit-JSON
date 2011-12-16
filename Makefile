WGET=wget --no-check-certificate
URL=https://raw.github.com/luaforge/json/master/json4lua/json/json.lua
M=modules/json/init.lua

all: json.lua
	${MAKE} $(M)

FUNS=`grep ^function json.lua |cut -d '(' -f 1 | cut -d ' ' -f 2`

$(M):
	mkdir -p modules/json
	grep -v ^module json.lua > $@
	echo "local JSON = {}" >> $@
	for a in ${FUNS} ; do echo "JSON.$$a = $$a" >> $@ ; done
	echo "return JSON" >> $@

clean:
	rm -f $(M)

mrproper: clean
	rm -f json.lua

json.lua:
	${WGET} ${URL}

at=
install:
ifeq ($(at),)
	@echo "Use: make install at=/path/to/modules/"
	@false
else
	cp $(M) $(at)
endif
