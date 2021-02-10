#!/bin/bash -e

# This is the only file that should be in english. It has to be readable by a
# system that is not ready to comprehend portuguese yet, but should be at the
# end of this script.

SAMBAH_DIR="$HOME/.sambá" # Urgh... SAMBÁ_DIR is not a valid identifier!
if [ ! -d "$SAMBAH_DIR" ]; then
    git clone https://github.com/villasv/sambah.git "$SAMBAH_DIR"
fi

# Add `source ~/.sambá/profile_pt_BR` to ~/.profile
PROFILE="$HOME/.profile"
if ! grep -qF 'sambá' "$PROFILE"; then
    echo 'SAMBAH_DIR="$HOME/.sambá"' >> "$PROFILE"
    echo '[ -s "$SAMBAH_DIR/.profile_pt_BR" ] && . "$SAMBAH_DIR/.profile_pt_BR"' >> "$PROFILE"
fi
