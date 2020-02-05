import binaryparse
import streams
import macros

createParser(frame_header, Header):
  u24: payload_length
  8: frame_type
  8: flags
  1: R = 0
  u31: stream_identifier

when isMainModule:
  var ss = newStringStream()
  var temp: Header = (50'u32, 2'i8, 2'i8, 0'i8, 1'u32)
  frame_header.put(ss, temp)
  ss.flush()
  echo ss.getPosition
  ss.setPosition(0)
  
  echo "temp: ", temp

  var temp2: Header = frame_header.get(ss)

  echo "temp2: ", temp2


  echo "temp2 == temp? ", temp2 == temp
  
  ss.close()