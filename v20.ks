FUNCTION TILT {
  PARAMETER minimum_altitude.
  PARAMETER angle.

  WAIT UNTIL ALTITUDE > minimum_altitude.
  PRINT "Locking heading to " + angle + " degrees".
  LOCK STEERING TO UP + R(90-angle,0,0).
}

CLEARSCREEN.

PRINT "Launch program initiated".
TILT(0, 80). LOCK THROTTLE TO 1.

PRINT "Counting down:".
FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
  PRINT "..." + countdown.
  WAIT 1.
}
PRINT "LAUNCH!". STAGE.

WAIT UNTIL VERTICALSPEED > 300. LOCK THROTTLE TO 0.75.

WAIT UNTIL APOAPSIS > 70000.
PRINT "Coasting to space".
TILT(0, 10). LOCK THROTTLE TO 0.01.

WAIT UNTIL SHIP:ALTITUDE > 70000.
TILT(0, 0). LOCK THROTTLE TO 1.

WAIT UNTIL STAGE:LIQUIDFUEL < 1.
STAGE. UNLOCK STEERING.

WAIT UNTIL ALT:RADAR < 5000.
PRINT "Deploying parachutes".
STAGE. WAIT 1. STAGE.
WAIT UNTIL VERTICALSPEED >= 0.
PRINT "Landed! (Or Splashed!) Program terminated, thanks for flying!".
