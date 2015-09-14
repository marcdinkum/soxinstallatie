#! /bin/bash

FILENAME=$1
BASENAME=`basename $1 .wav`

# take a snippet from ${BASENAME}.wav
sox $FILENAME ${BASENAME}_intro.wav trim 9.4 4.3

# reverse our snippet
sox ${BASENAME}_intro.wav ${BASENAME}_rev.wav reverse

# concatenate both fragments
sox --combine concatenate ${BASENAME}_intro.wav ${BASENAME}_rev.wav ${BASENAME}_mashup.wav

