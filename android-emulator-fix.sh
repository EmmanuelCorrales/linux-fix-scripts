# Fixes Android emulator not working with opensource driver for linux.
# I have a laptop with AMD GPU. The emulator works with fglrx driver.
# Unfortunately I have other problems with fglrx driver so I need to use the opensource driver
# The Android emulator cannot start with the opensource driver.
# This script lets the opensource driver start the Android emulator.
# http://stackoverflow.com/questions/36554322/cannot-start-emulator-in-android-studio-2-0

apt-get install lib64stdc++6:i386
cd $ANDROID_SDK/tools/lib64/libstdc++
mv libstdc++.so.6 libstdc++.so.6.bak
ln -s /usr/lib64/libstdc++.so.6 $ANDROID_SDK/tools/lib64/libstdc++
