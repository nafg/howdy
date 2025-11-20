#!/bin/sh
# Install config.ini only if it doesn't already exist
# Arguments: $1 = config directory (e.g. etc/howdy), $2 = source config.ini path

CONFIG_DIR="${DESTDIR}${MESON_INSTALL_PREFIX}/$1"
CONFIG_FILE="${CONFIG_DIR}/config.ini"

# Create directory if it doesn't exist
mkdir -p "${CONFIG_DIR}"

if [ ! -f "${CONFIG_FILE}" ]; then
    install -m 0644 "$2" "${CONFIG_FILE}"
    echo "Installed config.ini"
else
    echo "Preserving existing config.ini (not overwriting)"
fi
