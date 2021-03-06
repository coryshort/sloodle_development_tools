#!/bin/sh
# Commands to append a note to every LSL script under trunk with a showing where it lives in SVN.
# This is intended to help us deploy from Subversion directly into an .oar file.
# ...or commit code changed in an object back into Subversion without any unreliable copying-and-pasting.
# We may need something slightly more sophisticated later to cope with moving things around.

cd ../../moodle-mod_sloodle
#find * -name '*.lsl' -exec sh -c "echo \"// Please leave the following line intact to show where the script lives in Git:\n// SLOODLE LSL Script Git Location: {} \" >> {}" \;
find * -name '*.lsl' -exec sh -c "if ! grep -q \"SLOODLE LSL Script Subversion Location\" {}; then echo \"\n// Please leave the following line intact to show where the script lives in Git:\n// SLOODLE LSL Script Git Location: {} \" >> {}; fi" \;
find * -name '*.lslp' -exec sh -c "if ! grep -q \"SLOODLE LSL Script Subversion Location\" {}; then echo \"\n// Please leave the following line intact to show where the script lives in Git:\n// SLOODLE LSL Script Git Location: {} \" >> {}; fi" \;

