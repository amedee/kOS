CLEARSCREEN.

LOCK THROTTLE TO 1.0.
LOCK STEERING TO UP.

PRINT "Counting down:".
FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
    PRINT "..." + countdown.
    WAIT 1.
}
STAGE.

WAIT UNTIL SHIP:ALTITUDE > 70000.
STAGE.
UNLOCK STEERING.

WAIT UNTIL ALT:RADAR < 5000.
STAGE.
WAIT 1.
STAGE.
WAIT UNTIL VERTICALSPEED >= 0.
CLEARSCREEN.
PRINT "Landed! (Or Splashed!) Program terminated, thanks for flying!".
