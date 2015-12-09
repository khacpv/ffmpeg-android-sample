# ffmpeg-android-sample
FFMPEG for android tutorial

#### Sample Video Editor use ffmpeg library, NDK
this project bases on https://github.com/roman10/android-ffmpeg-tutorial
also see: http://kimdata.cafe24.com/wp/category/com/%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C/

#### install ffmpeg library:
http://www.roman10.net/how-to-build-ffmpeg-with-ndk-r9/

change ffmpeg-{version}/.configure
````
-z, noexecstack
to
-z noexecstack
````

build_android.sh (MACOS only)
````
#!/bin/bash
NDK=$HOME/Development/android-ndk-r10e
SYSROOT=$NDK/platforms/android-9/arch-arm/
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/darwin-x86_64
function build_one
{
./configure \
    --prefix=$PREFIX \
    --enable-shared \
    --disable-static \
    --disable-doc \
    --disable-ffmpeg \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --disable-avdevice \
    --disable-doc \
    --disable-symver \
    --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
    --target-os=linux \
    --arch=arm \
    --enable-cross-compile \
    --sysroot=$SYSROOT \
    --extra-cflags="-Os -fpic $ADDI_CFLAGS" \
    --extra-ldflags="$ADDI_LDFLAGS" \
    $ADDITIONAL_CONFIGURE_FLAG
make clean
make
make install
}
CPU=arm
PREFIX=$(pwd)/android/$CPU 
ADDI_CFLAGS="-marm"
build_one
````

to run specific tutorial2:

file: app/src/main/jni/Android.mk
````
LOCAL_SRC_FILES := tutorial01.c
to
LOCAL_SRC_FILES := tutorial02.c
````

file: Mainifest.xml
````
android:name=".MainActivity"
to 
android:name=".tutorial02.MainActivity"
````

make & build project