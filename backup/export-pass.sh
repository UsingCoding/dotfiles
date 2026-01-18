#!/usr/bin/env bash

# Export PASS from `gostore cat pass` if available
if command -v gostore >/dev/null 2>&1; then
  if PASS_VALUE=$(gostore cat backup/vadim-mac-personal pass 2>/dev/null); then
    if [ -n "$PASS_VALUE" ]; then
      export AUTORESTIC_MICROUSER_RESTIC_PASSWORD="$PASS_VALUE"
    fi
  fi
fi
