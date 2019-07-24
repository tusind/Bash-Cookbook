#!/bin/bash
# What about echo?
echo -n "Currently we have seen the command \"echo\" used before"
echo " in the previous script"
echo
# use -e for \t
echo -n "Can we also have \t tabs? \r\n\r\n?"
echo " NO, not yet!"
echo
echo -en "Can we also have \t tabs? \r\n\r\n?"
echo " YES, we can now! enable interpretation of backslash escapes"
echo "We can also have:"
# We can also use \0NNN for octal instead of \xFF for hexidecimal
echo -en '\xF0\x9F\x92\x80\n'
echo "Check the man pages for more info ;)"
