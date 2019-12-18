#!bin/bash

# ------------------------------------------------------------------------------
# REFRESHING "SEND PULSE TO RELAY MODULE"

# Uses bash scripting and xdotool automation tool:
# bash:
#	TUTORIAL: tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html
#
# LAUNCH: type "bash [pathtofile]" in the command line
#	(For example, I have this stored on the Desktop at the time of typing 
#	this, so I type "bash ~/Documents/RefreshingSendPulseToRelayModule.sh")
# ------------------------------------------------------------------------------

# WAITTIME is how long we wait for before sending a new pulse, in seconds
# 	(For example, WAITTIME=$((60 * 3)) would send a pulse every 3 minutes)
WAITTIME=$((60 * 60 * 24))

# PATHTOPULSESENDER is the path to the python file that scans beacons/sends UDP
PATHTOPULSESENDER="~/Documents/serialSendPulseToRelayModule.py"

echo Begin
while [ 1 ]; do
	# Launch a new terminal window, which runs 
	lxterminal -t PULSESENDER -e "python $PATHTOPULSESENDER"
	echo Sent pulse to trigger relay module, new pulse in "$WAITTIME" seconds.

	# Wait till next pulse:
	sleep $WAITTIME
done
echo End
