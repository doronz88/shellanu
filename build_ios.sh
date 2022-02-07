#!/bin/sh

ARCH="arm64"
SDK="iphoneos"
SYSROOT="$(xcrun --sdk iphoneos --show-sdk-path)"
CC="$(xcrun -f --sdk $SDK clang)"
CFLAGS="-arch $ARCH --sysroot=$SYSROOT"

make clean
make all CC="$CC" CFLAGS="$CFLAGS" LEMON_CC="gcc" LEMON_CFLAGS=""

for i in shell; do
    codesign -s - --entitlements ents.plist --generate-entitlement-der $i
done
