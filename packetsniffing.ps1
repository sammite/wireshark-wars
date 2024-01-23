# Create SSLKEYLOG file and place in user accessible directory.

# https://stackoverflow.com/questions/57498386/sslkeylogfile-environment-variable-doesnt-populate-any-text-file 
# Reference

# We'll use this to place our decrypted traffic keys
SetX SSLKEYLOGFILE "C:\Users\Public\ssl.log"

# Now you can see for any user! This one requires admin privileges. 

SetX SSLKEYLOGFILE /m "C:\Users\Public\ssl.log"
