#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Download video from YT in HQ
# @raycast.mode fullOutput
# @raycast.icon 📺

# Optional parameters:
# @raycast.packageName yt-dlp
# @raycast.argument1 { "type": "text", "placeholder": "URL", "optional": false}

# Documentation:
# @raycast.author Vadim Makerov
# @raycast.authorURL https://github.com/UsingCoding

(cd ~/Downloads && yt-dlp -f "bv*+ba/b" "$1")
