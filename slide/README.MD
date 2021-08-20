# Descrition
Encrypted static slide web page, without hosting images.

# Why ?
Share images publicly and securely with someone without paying a web hosting

# Steps
1. Copy all images to images folder
2. Convert all images to base64 using script: imgconverter.sh
3. Copy everything inside images.html to slide.html (line 80)
4. Use [staticrypt](https://robinmoisson.github.io/staticrypt/) to generate encrypted.html
5. Rename encrypted.html to index.html
6. Upload it anywhere, free one? -> githubpages? :)
