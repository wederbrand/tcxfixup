#!/bin/bash

# remove track
sed -i '' '/<Track>/,/<\/Track>/ d' $1

# remove old note
sed -i '' '/<Notes>/ d' $1
 
# create new note, just before </Activites>
sed -i '' '/<\/Activity>/ i\
<Notes>Endofixup</Notes>
' $1
