---
title: Client-server architecture
weight: 200
---

It is possible to separate Lem's server and client:

```
make server
make client

./lem-server --mode websocket --port 12345
./lem-client --url http://localhost:12345
```

you can now use Lem from your browser, or from the webview frontend.
