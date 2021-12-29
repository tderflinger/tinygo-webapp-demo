# tinygo-webapp-demo

Example web application that leverages TinyGo to combine
Go language code with a JavaScript web application.

## Building

Install Go modules:

```bash
$ go mod download
```

```bash
$ make demo
```

## Running

Start the local web server:

```bash
$ go run server.go
Serving ./html on http://localhost:8080
```

Use your web browser to visit http://localhost:8080.

In addition to the JavaScript, it is important the wasm file is served with the
[`Content-Type`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Type)
header set to `application/wasm`.  Without it, most browsers won't run it.

This simple server serves anything inside the `./html` directory on port
`8080`, setting any `*.wasm` files `Content-Type` header appropriately.

For development purposes (**only!**), it also sets the `Cache-Control` header
so your browser doesn't cache the files.  This is useful while developing, to
ensure your browser displays the newest wasm when you recompile.

In a production environment you **probably wouldn't** want to set the
`Cache-Control` header like this.  Caching is generally beneficial for end
users.

Further information on the `Cache-Control` header can be found here:

* https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control

## License

MIT License
