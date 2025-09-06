# Makefile
.PHONY: generate
generate:
	buf generate

.PHONY: push
push:
	git add .
	git commit -m "Update generated code"
	git tag v1.0.0
	git push origin main --tags