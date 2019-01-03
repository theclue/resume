#!/usr/bin/env bash

set -e

# Build Dir
if [ -n "${TRAVIS+x}" ]; then
  echo "** Executing in Travis CI environment";
  export BUILD_DIR=$TRAVIS_BUILD_DIR
 else
   if [ -n "${RESUME_BUILD_DIR+x}" ]; then
     echo "** Executing in local environment; build dir set to $RESUME_BUILD_DIR";
     export BUILD_DIR=$WOC_BUILD_DIR
   else
     echo "** Executing in local environment; build dir set to `pwd`"
     export BUILD_DIR=`pwd`
   fi
fi

wget "https://avatars1.githubusercontent.com/u/1724406?s=460&v=4" --output-document="img/gabriele.cv.jpg"
