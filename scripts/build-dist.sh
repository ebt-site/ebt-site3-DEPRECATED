#!/usr/bin/env sh
DIR=`dirname $0`
SCRIPT=`basename $0 | tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ`
APP=$DIR/..
set -e
EBTVUE3=`realpath ${DIR}/../node_modules/ebt-vue3`

VERSION=`node scripts/version.cjs`
#echo "<template>v$VERSION</template>" | tee $APP/src/components/Version.vue

echo "$SCRIPT: vite build"
vite build

echo $VERSION > $APP/dist/version
cp package.json dist
cp -r $EBTVUE3/src/i18n dist/assets/


