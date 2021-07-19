#!/bin/sh

AUTOTESTDIR=$(dirname $0)

nice fgfs \
    --native-fdm=socket,in,30,,5503,udp \
    --fdm=external \
    --aircraft=XP5 \
    --fg-aircraft="$AUTOTESTDIR/aircraft" \
    --airport=LFBR \
    --geometry=780x820 \
    --bpp=32 \
    --enable-hud \
    --disable-horizon-effect \
    --timeofday=noon \
    --disable-sound \
    --disable-fullscreen \
    --disable-random-objects \
    --disable-ai-models \
    --disable-ai-traffic \
    --disable-terrasync \
    --disable-real-weather-fetch \
    --fog-disable \
    --disable-specular-highlight \
    --disable-anti-alias-hud \
    --wind=0@0 \
    $*
