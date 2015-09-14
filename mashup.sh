#! /bin/bash

# take a snippet from years.wav
sox years.wav years_intro.wav trim 9.4 4.3

# reverse our snippet
sox years_intro.wav years_rev.wav reverse

# concatenate both fragments
sox --combine concatenate years_intro.wav years_rev.wav years_mashup.wav

