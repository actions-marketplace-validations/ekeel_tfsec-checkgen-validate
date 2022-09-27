#!/bin/ash

set -e

custom_checks_valid=true

for i in $(find . -type f -regex ".*_tfchecks\.yaml"); do
  res=$(tfsec-checkgen validate $i)
  if [ "$res" != "Config is valid" ]; then
		custom_checks_valid=false
	fi
done

echo "::set-output name=custom_checks_valid::$custom_checks_valid"