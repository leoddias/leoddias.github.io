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
    echo "$DIV_HTML" >> tmp.html
done

sed -i '/<!-- CONTENT HERE-->/e cat tmp.html' slide.html
rm tmp.html
echo "DONE"
echo "If you want to encrypt your page with a secret you can use staticrypt"
echo "Staticrypt can be found at: https://robinmoisson.github.io/staticrypt/"