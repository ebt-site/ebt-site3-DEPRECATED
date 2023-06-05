#!/bin/bash

DIR=`dirname $0`
SCRIPT=`basename $0`
CONFIG_PATH=`realpath ${DIR}/../ebt-config.mjs`
SRCDIR=`realpath ${DIR}/../content`
DSTDIR=`realpath ${DIR}/../public/content`
EBTVUE3=`realpath ${DIR}/../node_modules/ebt-vue3/scripts`

echo -e $SCRIPT: configuration $CONFIG_PATH

echo -e $SCRIPT: removing generated HTML $DSTDIR ...
rm -rf $DSTDIR
mkdir -p public/content

echo -e $SCRIPT: generating HTML files ...

echo EBTVUE3 $EBTVUE3
node $EBTVUE3/build-html.mjs $SRCDIR $DSTDIR $CONFIG_PATH
