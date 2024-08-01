#!/bin/bash

# BC BRANDS PACKAGE MANAGER INSTALLER SCRIPT
#
# Part of BC Brands Package Manager
# Registered Software #00014 with the BC Brands Software Centre
#
# Copyright (C) 2024 BC Brands. All rights reserved.

echo "[BC Packages] Downloading installer..."

# Make TMP
cd /tmp/
mkdir bcpackages
cd bcpackages

# Get Download Script
BCPACKAGE=$1

wget "https://host.bcwd.site/downloads/package/download.php?id=${BCPACKAGE}" -O install.sh

# Check with Software Centre
wget "https://host.bcwd.site/downloads/package/hashes/${BCPACKAGE}-script.txt" -O scripthash.txt

DOWNHASH=$(sha256sum install.sh)
MAINHASH=$(cat scripthash.txt)

if [ $DOWNHASH = $MAINHASH ]
then
    # Proceed
    chmod 755 install.sh

    echo "[BC Packages] Running installer..."
    ./install.sh

    echo "[BC Packages] Download complete."
else
    echo "[BC Packages] Download aborted. Hashes do not match."
fi

rm /tmp/bcpackages/install.sh
rm /tmp/bcpackages/scripthash.txt