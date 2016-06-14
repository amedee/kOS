FUNCTION do_science {
  SET P TO SHIP:PARTSNAMED("SR.ProbeCore")[0].
  SET M TO P:GETMODULE("ModuleScienceExperiment").
  M:DEPLOY.
  WAIT UNTIL M:HASDATA.
  M:TRANSMIT.
}

PRINT "Launch program initiated".
do_science.

PRINT "Counting down:".
FROM {local countdown is 3.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
  PRINT "..." + countdown.
  WAIT 1.
}
PRINT "LAUNCH!". STAGE.

WAIT 10. do_science.

WAIT 30. STAGE. STAGE. STAGE. SET CHUTES TO TRUE. CHUTES ON.
SHUTDOWN.
