# ffmpeg-android-sample
FFMPEG for android tutorial

#### Sample Video Editor use ffmpeg library, NDK
this project bases on https://github.com/roman10/android-ffmpeg-tutorial

#### install ffmpeg library:
http://www.roman10.net/how-to-build-ffmpeg-with-ndk-r9/

to run specific tutorial2:
file: app/src/main/jni/Android.mk
````
LOCAL_SRC_FILES := tutorial01.c
to
LOCAL_SRC_FILES := tutorial02.c
````

file: Mainifest.xml
android:name=".MainActivity"
to 
android:name=".tutorial02.MainActivity"

make & build project