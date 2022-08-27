@echo off
C:
cd C:\
mkdir Android
cd Android
echo --------------------------------------------------
echo Welcome
echo --------------------------------------------------
echo This batch script will do the following:
echo -Install the necessary VSCode extensions
echo -Create the Android directory in C:\
echo -Pull Flutter into the flutter subfolder of AndroidHome
echo -Set the ANDROID_SDK_HOME environment variable to the home folder in the Android directory
echo -Move the existing .android folder into the home folder so that AVDs are created there
echo -Configure VS Code's variable for the flutter SDK (THIS WILL OVERWRITE ANY CUSTOM VS CODE SETTINGS YOU HAVE)
echo -Run flutter doctor
echo -Open the Android licences for you to accept
echo -Pull github.com/robbinl to a folder on your desktop
echo -------------------------------------------------
echo OPEN ANDROID STUDIO AND INSTALL ANDROID SDK TO C:\Android BEFORE HITTING ENTER.
echo WITHOUT ADMIN ACCESS I CANNOT SCRIPT THIS TO HAPPEN AUTOMATICALLY.
echo WHEN THIS INSTALLATION IS DONE, PRESS ANY KEY TO CONTINUE.
echo -------------------------------------------------
echo Once this script is finished, you will still need to locate the Flutter SDK in VS Code.
echo -------------------------------------------------

PAUSE

@echo on
call code --install-extension dart-code.dart-code
call code --install-extension dart-code.flutter
mkdir home
mkdir flutter
cd flutter
git init
git pull https://github.com/flutter/flutter.git master
cd bin
setx ANDROID_SDK_HOME C:\Android\home
move %USERPROFILE%\.android C:\Android\home\.android
echo {"dart.flutterSdkPath": "C:\\Android\\flutter"} > %APPDATA%\Code\User\settings.json
call flutter config --android-sdk C:\Android\
call flutter doctor
call flutter doctor --android-licenses
cd %USERPROFILE%/Desktop
mkdir RobbinLGit
cd RobbinLGit
git init
git pull https://github.com/robbinl/flutter-begin.git master

PAUSE