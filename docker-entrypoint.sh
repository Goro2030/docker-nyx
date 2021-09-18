#!/bin/sh

echo "Creating user toruser..."

adduser --uid 1000 --no-create-home toruser
echo toruser:toruser-changeme | chpasswd

# Wait forever
sleep infinity
