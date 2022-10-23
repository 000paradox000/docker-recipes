#!/usr/bin/env bash

output_dir="/opt/src/output"
input_dir="/opt/src/input"
find $output_dir -mindepth 1 -maxdepth 1 ! -name '.gitignore' -exec echo rm rf {} +

for input_file_path in $input_dir/*;
do
  input_file_name=`basename $input_file_path`;
  input_file_extension=${input_file_name##*.}
  output_file_dir=$output_dir/$input_file_extension;
  cmd="libreoffice --headless --convert-to pdf --outdir $output_file_dir $input_file_path";
  echo $cmd;
  $cmd;
  echo ""
done;
