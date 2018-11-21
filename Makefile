SHELL := /bin/bash

compile:
	source /disco-grande/github-libs/emsdk/emsdk_env.sh
	emcc -o index.html main.c -O3 -s WASM=1 --shell-file template.html -s NO_EXIT_RUNTIME=1  -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall"]'

serve:
	http-server