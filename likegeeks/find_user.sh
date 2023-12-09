#!/usr/bin/env bash

set -e

user=$1
# result=$(grep -F "$user" /etc/passwd || true)

# if [[ -z $result ]]; then
#   echo "$user not found"
# else
#   echo "$result"
# fi

if grep $user /etc/passwd
then
echo "The user $user Exists"
fi
