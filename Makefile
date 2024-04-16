NAME=haskell-pdk-template

build:
	wasm32-wasi-cabal build
	cp `find dist-newstyle/build/wasm32-wasi/ -name haskell-pdk-template.wasm` plugin.wasm

test:
	extism call plugin.wasm greet --wasi --input "world"
