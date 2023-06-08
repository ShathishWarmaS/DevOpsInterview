#!/bin/bash

cleanup() {
    echo "Cleaning up and exiting..."
    # Add cleanup commands here
    exit 0
}

trap cleanup SIGINT

while true; do
    # Perform script tasks here
    sleep 1
done
#the cleanup function is defined to handle the SIGINT signal (which is typically sent by pressing Ctrl+C). When the script receives the SIGINT signal, the cleanup function is executed, performing any necessary cleanup actions, and then the script exits gracefully.

#sage of the trap command in Bash scripting. Provide an example where trap is used to handle a specific signal.
#The trap command is used to catch and respond to signals received by a script or shell. It allows you to define actions or commands to be executed when a specific signal is received.