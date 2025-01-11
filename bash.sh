#!/bin/bash
# Author: [Raushan]
set -x
set -e
set -o pipefail

# Get the current date and time in UTC
current_date=$(date -u +"%Y%m%d")
current_time=$(date -u +"%H:%M")
echo "Current time: $current_time"

# Split hours and minutes
IFS=: read -r hour minute <<< "$current_time"

# Convert hour and minute to integers to remove leading zeros
hour=$((hour))
minute=$((minute))

echo "Hour: $hour"
echo "Minute: $minute"

# Round down minutes to the nearest 15
minute=$((minute / 15 * 15))
formatted_minute=$(printf "%02d" "$minute")
echo "Formatted minute: $formatted_minute"

# Increment hour if the rounded minute is 0
if [ "$minute" -eq 0 ]; then
    hour=$((hour + 1))
fi

# Handle hour overflow (reset to 0 if hour is 24)
if [ "$hour" -eq 24 ]; then
    hour=0
fi

# Format the hour as two digits
formatted_hour=$(printf "%02d" "$hour")

# Print the current date and the rounded time
echo "Current date: $current_date"
echo "Formatted hour: $formatted_hour"
echo "Formatted minute: $formatted_minute"

# Construct the file extension using current date, hour, and minute
current_file_extension="${current_date}${formatted_hour}:${formatted_minute}"
echo "Current file extension: $current_file_extension"

# Define the quoteline file name
quoteline_file="QUOTELINE-${current_file_extension}.csv"
echo "Quoteline file: $quoteline_file"

# Project ID and topic for message queue
project_id_dev="mot-pd-sales-daff"
quoteline_topic="projects/${project_id_dev}/topics/tpt-proton-sftp-quoteline"
echo "Quoteline topic: $quoteline_topic"

# Construct the quoteline message in JSON format
quoteline_msg="{ \"name\": \"${quoteline_file}\" }"
echo "Quoteline message: $quoteline_msg"

# You can add the rest of your functionality here, such as publishing the message
# Example:
# echo "$quoteline_msg" | gcloud pubsub topics publish "$quoteline_topic" --message-type=json
