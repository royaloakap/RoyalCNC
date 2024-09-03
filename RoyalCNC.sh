#!/bin/bash

# Variables
SRC_DIRECTORY="/root/RoyalSRC/"
ZIP_FILENAME="/root/SRC_BACKUP.zip"
DIRECTORY_TO_BACKUP="/root/backup"
CONFIG_PATH="build/config.json"
SCREEN_SESSION="SRC_session"
SCREEN_CMD="screen -dmS $SCREEN_SESSION ./RoyalSRC"

# Function to start the SRC in a new screen session
start_SRC_in_screen() {
    cd $SRC_DIRECTORY || { echo "Directory $SRC_DIRECTORY does not exist"; exit 1; }
    $SCREEN_CMD
    if [ $? -ne 0 ]; then
        echo "Failed to start Royal SRC."
        exit 1
    fi
}

# Function to check if the SRC screen session is running
is_SRC_session_running() {
    screen -ls | grep -q "$SCREEN_SESSION"
}

# Function to attach to the SRC screen session
attach_to_screen() {
    screen -r $SCREEN_SESSION
}

# Function to log the state of the application
log_application_state() {
    echo "Checking state of Royal SRC..."
    screen -r $SCREEN_SESSION -X hardcopy /tmp/screen_output.log
    cat /tmp/screen_output.log
}

# Main function
main() {
    # Check if the screen session is running
    if ! is_SRC_session_running; then
        echo "Starting Royal SRC in screen session..."
        start_SRC_in_screen
        echo "Royal SRC started. Use 'screen -r $SCREEN_SESSION' to attach to the session."
        sleep 5 # Wait a few seconds for the app to start
        log_application_state
    else
        echo "Royal SRC is already running. Attaching to the session..."
        attach_to_screen
        exit 0
    fi

    # Infinite loop to check if the screen session is running and restart if necessary
    while true; do
        if ! is_SRC_session_running; then
            echo "SRC is not running, restarting. To see the issue, run: cd $SRC_DIRECTORY; ./RoyalSRC"
            
            # Perform system adjustments or clean-up (if necessary)
            echo "Performing system adjustments..."
            sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null
            sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null
            sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1 >/dev/null
            sudo service apache2 stop >/dev/null

            # Restart the SRC
            start_SRC_in_screen
            echo "Royal SRC has been restarted. Use 'screen -r $SCREEN_SESSION' to attach to the session."
            sleep 5 # Wait a few seconds for the app to start
            log_application_state
        else
            echo "Royal SRC is already running. Sleeping for 10 seconds."
        fi
        sleep 10
    done
}

# Run the main function
main
