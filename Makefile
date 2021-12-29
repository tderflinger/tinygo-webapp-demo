
demo: clean wasm_exec
	tinygo build -o ./html/wasm.wasm -target wasm -no-debug ./src/demo/wasm.go
	cp ./src/demo/wasm.js ./html/
	cp ./src/demo/index.html ./html/

wasm_exec:
	cp ./targets/wasm_exec.js ./html/

clean:
	rm -rf ./html
	mkdir ./html
