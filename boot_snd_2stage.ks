PRINT "Launch program initiated".

PRINT "Counting down:".
FROM {local countdown is 3.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
  PRINT "..." + countdown.
  WAIT 1.
}
PRINT "LAUNCH!". STAGE.

WAIT UNTIL MAXTHRUST = 0. STAGE.

WAIT UNTIL SHIP:VERTICALSPEED < 0. STAGE.
SHUTDOWN.
