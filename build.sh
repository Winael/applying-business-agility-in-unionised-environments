#!/bin/bash -l

for LANGUAGE in $(ls src/ | grep -v img); do

    FILENAME=$(grep file src/${LANGUAGE}/metadata.txt | awk '{print $2}')

    pandoc -o build/${FILENAME} $(for CHAPTER in $(ls src/${LANGUAGE}); do echo "src/${LANGUAGE}/${CHAPTER}"; done)

done
