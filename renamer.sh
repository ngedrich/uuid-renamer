#!/bin/bash
INPUTDIR=$1
OUTPUTDIR="$1/output/"
mkdir $OUTPUTDIR

find $INPUTDIR -type f | while read FILE; do 
  EXTENSION=${FILE##*.}
  FILENAME=$(basename -- $FILE)
 
  
  cp "$FILE" "$OUTPUTDIR${FILENAME%.*}-$(uuidgen).$EXTENSION"
  #echo $FILE$(uuidgen)
done
