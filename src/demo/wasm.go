package main

import (
	"github.com/surgebase/porter2"
	"syscall/js"
)

func main() {
}

//export update
func update() {
	document := js.Global().Get("document")
	aStr := document.Call("getElementById", "word").Get("value").String()
	result := porter2.Stem(aStr)
	document.Call("getElementById", "result").Set("value", result)
}
