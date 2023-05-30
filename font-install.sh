#!/bin/bash

echo "[-] Download font [-]"
DOWNLOAD_LINK="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/${1-"FiraCode"}.zip"
echo $DOWNLOAD_LINK

wget "${DOWNLOAD_LINK}" -O fontfile.zip -q --show-progress
if [ $? -eq 0 ]; then
    unzip -q fontfile.zip -d ~/.fonts
    fc-cache -f

    rm fontfile.zip
    echo "done!"
else
    echo "Could not install font. Make sure that this font exists."
fi

