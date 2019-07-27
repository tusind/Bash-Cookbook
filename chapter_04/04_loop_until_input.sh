#!/bin/bash
EXIT_PLEASE=0
# EXIT_PLEASE is set to 0, until will never be satisfied
until [ $EXIT_PLEASE != 0 ]
do
   echo "Pres CTRL+C to stop..."
   sleep 1
done
exit 0
