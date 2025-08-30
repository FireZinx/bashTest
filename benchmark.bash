#!/bin/bash

echo "Starting the count..."

START_TIME=$(date +%s)

TARGET=1000000000000

echo "Counting from 1 to $TARGET..."
for ((i=1; i<=$TARGET; i++))
do
  : # This is a no-op command, it does nothing.
done

END_TIME=$(date +%s)

TOTAL_TIME=$((END_TIME - START_TIME))

SECONDS_TO_MINUTES=$((TOTAL_TIME / 60))
SECONDS_REMAINDER=$((TOTAL_TIME % 60))

SECONDS_TO_HOURS=$((SECONDS_TO_MINUTES / 60))
MINUTES_REMAINDER=$((SECONDS_TO_MINUTES % 60))

echo "Count finished!"
echo "----------------------------------------"
echo "Start time: $(date -d @$START_TIME)"
echo "End time:   $(date -d @$END_TIME)"
echo "----------------------------------------"
echo "Total elapsed time: $TOTAL_TIME seconds"
echo "Human-readable time: ${SECONDS_TO_HOURS}h ${MINUTES_REMAINDER}m ${SECONDS_REMAINDER}s"
echo "----------------------------------------"