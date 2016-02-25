#!/bin/sh

set -e
set -x

mkdir /project
unzip input -d /project
coala-ci -c /project > /files/status
# if we reach this coala has not failed due to set -x
cp /files/status /files/output
