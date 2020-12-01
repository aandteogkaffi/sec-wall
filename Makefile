# ---------- ---------- ---------- ---------- ---------- ----------
#
# secwall Makefile
#
# ---------- ---------- ---------- ---------- ---------- ----------

target: help

.PHONY: help
help:
	@echo "Usage: make [PHONY]"
	@sed -n -e "/sed/! s/\.PHONY: //p" Makefile
	@echo ""


.PHONY: clean
clean:
	@py3clean .
	@rm -rf var/
	@echo ""


.PHONY: dev
dev: fixed test safe


.PHONY: fixed
fixed:
	@black .
	@echo ""


.PHONY: safe
safe:
	@mypy src/secwall/__init__.py --disallow-untyped-defs || echo ""
	@echo ""


.PHONY: test
test:
	@python3 -m unittest discover
	@echo ""
