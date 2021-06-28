#!/usr/bin/env bash

set -Eeuo pipefail

# Define variables
readonly dir="$(dirname "$0")" 

# Usage or Help message
usage() {
  cat <<EOF >&2
Usage: $(basename "$0") OPTION...
Description:
Options:
  -v  Verbose
EOF
  exit 1
}

# Parse options
verbose=""
id=""
debug=
while getopts h?v:id OPT; do
  case "${OPT}" in
    h|\?)
        usage
        exit 0 ;;
    v) verbose="${OPTARG}" ;;
    i) id="${OPTARG}" ;;
    d) debug=true ;;
    *) usage ;;
  esac
done

# Define function
func1() {
# check params, size, null and exit 1 when needed

# logic for-loop
  for projectName in "${projectNames[@]}"  # array len, both ${#array[*]} and ${#array[@]} ok
  # more array ${array[@]:position:length}, unset array
do
  func2 $projectName 
  # test experessions, most common, for file(-a, -e, -d, -s) , string (-n, -z), int(-eq, -lt), expr, [[ ]]
  if [ "$verbose" = "1" ]; then  
  # elif commands; then
    echo -n . 1>&2
  else 
    echo "xx"
  fi
done

# read files
# read -t timeout, -p prompt -a array, -n number of characters, -e auto completion, -d,  -s hide, etc.
# while also support test expr
  while IFS= read -r -d '' FILE  # IFS default is space(" "), IFS=":" to change it. 
do
    case $FILE in
        * ) FILENAME=$(basename "$FILE")
            echo "processing file: $FILENAME "
            # handle file
            ;;
    esac
done < <(find "$DIRECTORY" -type f -name "*.yaml" -print0)

}

# Verify options len
if [ $# -lt 1 ]; then
  usage()
fi

# Invoke cmd directly
projectNames=$(gcloud projects list | grep name | cut -d' ' -f2)

# Call logic 
func1 id projectNames

# verify func1 result
if [ "$?" = "1" ]; then
  echo "func1 failed"
  exit 1
fi

# Next