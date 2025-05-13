#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Generate TOTP passcode
# @raycast.mode fullOutput
# @raycast.icon 🔐

# Optional parameters:
# @raycast.packageName gostore
# @raycast.argument1 { "type": "text", "placeholder": "Path", "optional": false}

# Documentation:
# @raycast.author Vadim Makerov
# @raycast.authorURL https://github.com/UsingCoding

gostore totp passcode $1
