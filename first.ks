CLEARSCREEN.

LOCK THROTTLE TO 1.0.

PRINT "Counting down:".
FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
    PRINT "..." + countdown.
    WAIT 1.
}

WHEN MAXTHRUST = 0 THEN {
    PRINT "Staging".
    STAGE.
//    PRESERVE.
}.

LOCK STEERING TO UP.

WAIT UNTIL SHIP:ALTITUDE > 70000.
