import strutils
import tables

type State = enum
  Idle, ClientOpen, ServerOpen, Closed

type Connection* = object
  current_state*: State