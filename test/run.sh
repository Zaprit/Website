#!/bin/sh

SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
"$SCRIPTPATH/abyss" -importPath abyss -srcPath "$SCRIPTPATH/src" -runMode dev
