#!/bin/bash

# Function to check if the internet is connected
check_internet() {
    ping -c 1 8.8.8.8 > /dev/null 2>&1
    return $?
}

# Get the name of the active connection
connection=$(nmcli -t -f TYPE,STATE d | grep ":connected" | cut -d: -f1)

if check_internet; then
    if [ "$connection" == "wifi" ]; then
        echo "%{F#fca103}%{F-} Connected"
    elif [ "$connection" == "ethernet" ]; then
        echo "%{F#fca103}%{F-} Connected"
    else
        echo "%{F#fca103}%{F-} Connected"  # Fallback icon for other connections
    fi
else
    echo "%{F#F2541f}%{F-} Disconnected"
fi
