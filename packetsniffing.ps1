# Create SSLKEYLOG file and place in user accessible directory.
# To threat hunt, you can search for boxes/users that have the SSLKEYLOGFILE set as an environment variable.
# TBH, I don't think this is a particular concern for most people, most of the time. 


# https://stackoverflow.com/questions/57498386/sslkeylogfile-environment-variable-doesnt-populate-any-text-file 
# Reference

# We'll use this to place our decrypted traffic keys
SetX SSLKEYLOGFILE "C:\Users\Public\ssl.log"

# Now you can see for any user! This one requires admin privileges. 

SetX SSLKEYLOGFILE /m "C:\Users\Public\ssl.log"
