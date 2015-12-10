#!/usr/bin/env bash
# chmod a+x jni_header.sh
# generate header file:
cd app/src/main
javah -d ./jni -verbose -classpath ./java com.oic.videoeditor.MainActivity
javah -d ./jni -verbose -classpath ./java com.oic.videoeditor.tutorial02.MainActivity