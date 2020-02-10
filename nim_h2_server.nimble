# Package

version       = "0.1.0"
author        = "Sloane Simmons"
description   = "Nim HTTP 2 server as a library"
license       = "MIT"
srcDir        = "src"



# Dependencies

requires "nim >= 1.0.6"
requires "hpack >= 0.2.0"
#requires "binaryparse >= 0.2.3"
requires "https://github.com/singularperturbation/binaryparse#patch-1"