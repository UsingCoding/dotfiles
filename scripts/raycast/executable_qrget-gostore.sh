#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Get gostore secret in QR code
# @raycast.mode fullOutput
# @raycast.icon 🔐

# Optional parameters:
# @raycast.packageName gostore
# @raycast.argument1 { "type": "text", "placeholder": "Path", "optional": false}
# @raycast.argument2 { "type": "text", "placeholder": "Key", "optional": true}

# Documentation:
# @raycast.author Vadim Makerov
# @raycast.authorURL https://github.com/UsingCoding

gostore qrcat $1 $2
