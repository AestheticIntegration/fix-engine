# Makefile
#
build:
	@echo "src-protocol-exts-pp-vg" > dune-ignore 
	@echo "src-protocol-exts-vg" >> dune-ignore 
	dune build @install --profile release
	rm dune-ignore

build_vgs:
	@echo "src-protocol-exts-pp" > dune-ignore
	@echo "src-protocol-exts" >> dune-ignore 
	@echo "src-model" >> dune-ignore 
	@echo "src-simulation" >> dune-ignore 
	dune build @install
	rm dune-ignore

build_tests:
	@echo "src-protocol-exts-pp-vg" > dune-ignore 
	@echo "src-protocol-exts-vg" >> dune-ignore 
	dune build src-tests/test_runner.bc 
	rm dune-ignore

doc:
	@echo "src-protocol-exts-pp-vg" > dune-ignore 
	@echo "src-protocol-exts-vg" >> dune-ignore 
	dune build @doc
	mkdir -p _pages/doc
	cp -r _build/default/_doc/_html/* _pages/doc/
	rm -rf _pages/doc/odoc.css
	sed -i '' -e 's/<body>/<body><nav><\/nav>/g' _pages/doc/index.html
	rm dune-ignore

module_graph.svg: _build/doc/all_modules.docdir/all_modules.dot
	sed -e 's/rotate=90;//g' "$<" | dot -Tsvg -o $@

server:
	@echo "src-protocol-exts-pp-vg" > dune-ignore 
	@echo "src-protocol-exts-vg" >> dune-ignore 
	dune build src-simulation/server.bc
	rm dune-ignore

client:
	@echo "src-protocol-exts-pp-vg" > dune-ignore 
	@echo "src-protocol-exts-vg" >> dune-ignore 
	dune build src-simulation/client.bc
	rm dune-ignore

# opam1-setup - for running in Wercker. Assumes the correct switch is already installed and selected.
opam1-setup:
	opam pin add -y . --no-action
	opam depext -y fix-engine
	opam install fix-engine --deps-only

# opam2-setup - Will create a local switch under ./_opam.
opam2-setup: _opam
	opam pin add -y . --no-action
	opam depext -y fix-engine
	opam install -y . --deps-only --with-test --working-dir

_opam:
	opam switch create . --empty
	opam install -y ocaml-base-compiler.4.05.0

clean:
	dune clean

.PHONY: build build_vgs run run_server clean doc

