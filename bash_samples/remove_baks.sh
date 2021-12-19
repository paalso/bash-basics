#!/usr/bin/bash

# First argument: dir with files
# Second argument: backup dir for these files
# Removes backups (of original files from dir) from backup dir

ERRS_LOG=bakupsrmerrs.log
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

if [[ $# -ne 2 ]]
then
  echo "Usage: $0 dir backup-dir"
  exit 1
fi

dir=$1; backups_dir=$2
return_code=0
for file in `ls $dir`
do
  echo "Found file ${dir}${file}"
  if `rm $backups_dir\$file 2>>$ERRS_LOG`
  then
    echo -e "${GREEN}Succesfully removed file ${backups_dir}${file}${NC}"
  else
      # echo "Cannot remove file ${backups_dir}${file}"
      echo -e "${RED}Cannot remove file ${backups_dir}${file}${NC}"
    return_code=1
  fi
done
exit $return_code
