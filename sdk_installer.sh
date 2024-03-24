
#!/bin/bash

# Step 1: Install Node.js and npm
sudo apt update
sudo apt install wget -y
curl -sL https://deb.nodesource.com/setup_21.x | sudo -E bash -
sudo apt install -y nodejs

# Verify Node.js and npm installation
node -v
npm -v

# Step 2: Install JDK
sudo apt install openjdk-17-jdk

# Verify JDK installation
java -version

# Step 3: Download and Install Android Command Line Tools
ANDROID_SDK_PATH="$HOME/Android"
mkdir -p $ANDROID_SDK_PATH
wget https://github.com/1xrohit/Setup-ReactNative-on-Ubuntu-without-Android-Studio/releases/download/AndroidSDK/Android.zip -O $ANDROID_SDK_PATH/Android.zip
unzip $ANDROID_SDK_PATH/Android.zip -d $ANDROID_SDK_PATH

# Update PATH in .bashrc
echo "export ANDROID_HOME=$ANDROID_SDK_PATH/Sdk" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/emulator" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/platform-tools" >> ~/.bashrc
echo "export PATH=\$PATH:\$ANDROID_HOME/cmdline-tools/latest/bin" >> ~/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64" >> ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc

source ~/.bashrc

# Step 4: Install React Native CLI
npm install -g react-native-cli

echo "Congratulations! You have successfully set up React Native on Linux or Ubuntu without relying on Android Studio."
