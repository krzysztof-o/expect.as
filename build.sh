#!/bin/sh

compc -source-path=src \
 -output bin/expect.swc \
 -include-sources src/ \
 -external-library-path lib/flexunit-4.1.0-8-as3_4.1.0.16076.swc \
 -external-library-path ${FLEX_HOME}/frameworks/libs/player/11.1/playerglobal.swc \
