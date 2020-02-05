## Nim HTTP/2 implementation as a library.  Heavily based on the Python
## implementation [hyper-h2](https://github.com/python-hyper/hyper-h2).
## 
## Idea is that with this + nim-hpack + parsing + network, you'll have a basic
## but complete implementation for HTTP/2 server.
import nim_h2_server/[submodule, connection, frame]

# Constants needed mostly for headers
const
  # For Upgrade in the TLS header
  H2_TLS* = "h2"
  # Used when upgrading the header in HTTP/1.1 header
  H2_CLEARTEXT* = "h2c"

  # 0x505249202a20485454502f322e300d0a0d0a534d0d0a0d0a
  CLIENT_CONNECTION_PREFACE* = "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

export frame.frame_header