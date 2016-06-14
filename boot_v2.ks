CLEARSCREEN.
PRINT "Launch program initiated".

LOCK STEERING TO UP.
LOCK THROTTLE TO 1.0.

PRINT "Counting down:".
FROM {local countdown is 3.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
  PRINT "..." + countdown.
  WAIT 1.
}
PRINT "LAUNCH!". STAGE.

WAIT UNTIL SHIP:ALTITUDE > 70000.
PRINT "Space reached!".
