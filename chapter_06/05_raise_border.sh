#!/bin/bash

if [ -f mountain.png ]; then
    convert -raise 5x5 mountain.png mountain-raised.png
else
    echo "file mountain.png not found"
fi
