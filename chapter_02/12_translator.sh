#!/bin/bash
./11_hellobonjour.sh

export TEXTDOMAIN="hellobonjour"
TEXTDOMAINDIR=$(pwd /locale)
export TEXTDOMAINDIR

export LANGUAGE=fr
./11_hellobonjour.sh
