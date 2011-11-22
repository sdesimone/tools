DEVROOT=/Developer/Platforms/iPhoneOS.platform/Developer
SDKROOT=$DEVROOT/SDKs/iPhoneOS4.3.sdk
SYSROOT=$SDKROOT

## this is just an example ofi setting custom flags  replace with what you need...
BUILD_PATH=<ABSOLUTE_PATH_TO_YOUR_ICU_DIR>
BUILD_FLAGS=<your flags here: "-I$BUILD_PATH/source/include/ -L$BUILD_PATH/source/tools/ "

export CXXPP=
export CXXPPFLAGS=
export CPPFLAGS="-I$SDKROOT/usr/lib/gcc/arm-apple-darwin10/4.2.1/include/ -I$SDKROOT/usr/llvm-gcc-4.2/lib/gcc/arm-apple-darwin10/4.2.1/include/ -I$SDKROOT/usr/include/ -I$SDKROOT/usr/include/c++/4.2.1/armv7-apple-darwin10/ -I./include/ -miphoneos-version-min=2.2 $BUILD_FLAGS"

export CFLAGS="$CPPFLAGS -pipe -no-cpp-precomp -isysroot $SDKROOT"
export CPP="$DEVROOT/usr/bin/cpp $CPPFLAGS"
export CXXFLAGS="$CFLAGS" 
export CC="$DEVROOT/usr/llvm-gcc-4.2/bin/arm-apple-darwin10-llvm-gcc-4.2"
export CXX="$DEVROOT/usr/llvm-gcc-4.2/bin/arm-apple-darwin10-llvm-g++-4.2"
export LDFLAGS="-L$SDKROOT/usr/lib/ -isysroot $SDKROOT -Wl,-dead_strip -miphoneos-version-min=2.0"

## this is just an example of your configure line, replace with what you need...
sh $BUILD_PATH/source/configure --host=arm-apple-darwin --enable-static --disable-shared -with-cross-build=$BUILD_PATH/hostbuild

