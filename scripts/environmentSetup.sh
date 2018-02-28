#!/bin/bash

function getAndroidSDK {
  if [ ! -e $ANDROID_HOME/build-tools/26.0.2 ]; then echo y | android update sdk -u -a -t "build-tools-26.0.2"; fi;
  if [ ! -e $ANDROID_HOME/platforms/android-26 ]; then echo y | android update sdk -u -a -t "android-26"; fi;
  if [ ! -e $ANDROID_HOME/extras/android/m2repository ]; then echo y | android update sdk -u -a -t "extra-android-m2repository"; fi;
}