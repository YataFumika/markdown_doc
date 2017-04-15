#! /bin/bash

CONVERT_TO="html"
# ./markdowns 内の.mdファイルをtextile形式に変換

for file in `\find ./markdowns/ -name '*.md'`; do
  new_name=${file%.*}.${CONVERT_TO}
  # 別フォーマットへ変換
  pandoc -s ${file} -o ${new_name}
  # 変換後のディレクトリへ移動
  mkdir -p ./${CONVERT_TO}s
  mv ${new_name} ./${CONVERT_TO}s/
  rm ${file}
done
