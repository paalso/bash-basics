#!/usr/bin/env bash

set -e

if false; then
    echo foo
elif true; then
    echo bar
else
    echo baz
fi
