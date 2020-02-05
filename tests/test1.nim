# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest
import nim_h2_server/frame
import streams

test "can parse frame":
  # TODO: Get fixture data in here and actually run tests
  assert not isNil(frame_header.get)
  assert not isNil(frame_header.put)

