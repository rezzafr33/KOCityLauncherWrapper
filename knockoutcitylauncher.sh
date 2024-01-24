#!/usr/bin/env bash

set -x

me="$(readlink -f "$0")"
here="${me%/*}"

export APPIMAGE_EXTRACT_AND_RUN=1
export PATH="$here:$PATH"

"$here/knockoutcitylauncher-2.0.3.AppImage" --no-sandbox
