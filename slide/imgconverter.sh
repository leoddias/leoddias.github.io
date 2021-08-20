#!/bin/bash
IMAGES='images/*'
for image in $IMAGES
do
    echo "Processing image $image"
    IMG_BASE64="data:image/jpeg;base64,$(base64 -w 0 $image)"
    DIV_HTML="
                        <div class=\"card-image\">
                            <img src=\"$IMG_BASE64\">
                        </div>
    "
    echo "$DIV_HTML" >> images.html
done

echo "DONE"
echo "Please copy everything inside images.html and paste in slide.html, then use staticrypt to generate your protected slide webpage"
echo "Staticrypt can be found at: https://robinmoisson.github.io/staticrypt/"