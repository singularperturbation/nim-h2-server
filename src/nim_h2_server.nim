## Nim HTTP/2 implementation as a library.  Heavily based on the Python
## implementation [hyper-h2](https://github.com/python-hyper/hyper-h2).
## 
## Idea is that with this + nim-hpack + parsing + network, you'll have a basic
## but complete implementation for HTTP/2 server.
import nim_h2_server/[submodule, connection]