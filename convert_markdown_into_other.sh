#! /bin/bash

CONVERT_TO="html"
# ./markdowns 内の.mdファイルをtextile形式に変換

for file in `\find ./markdowns/ -name '*.md'`; do
  new_name=${file%.*}.${CONVERT_TO}		
  pandoc -s $file -o ${new_name}
  mv ${new_name} ./${CONVERT_TO}s/
done
