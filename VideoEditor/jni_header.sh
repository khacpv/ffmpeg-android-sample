#!/usr/bin/env bash
# chmod a+x jni_header.sh
# generate header file:
cd app/src/main
javah -d ./jni -verbose -classpath /Users/khacpham/Development/android-sdk-macosx/platforms/android-19/android.jar:./java:../../build/classes/debug com.oic.videoeditor.MainActivity
javah -d ./jni -verbose -classpath /Users/khacpham/Development/android-sdk-macosx/platforms/android-19/android.jar:./java:../../build/classes/debug com.oic.videoeditor.tutorial02.MainActivity