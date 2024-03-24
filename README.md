<h1 align="center">
  <img src="https://iili.io/Jhw0tJj.jpg"/><br/>
  React Native App Development Environment
</h1>

# Setup React Native App development environment on Linux / Ubuntu without Android Studio 2024

This guide outlines the process of setting up React Native development environment on Linux or Ubuntu without relying on Android Studio and EXPO. This setup is particularly useful for developers who prefer minimalistic installations or have specific requirements for their development environment.

## Prerequisites

Before proceeding with the setup, ensure that the following prerequisites are met:

- **Node.js & npm**: Install Node.js and npm on your system. You can install them using a package manager like `apt`.
- **Java Development Kit (JDK)**: React Native requires JDK to be installed. Ensure JDK is installed on your system.
- **Android SDK**: Instead of installing Android Studio, we will install the Android SDK separately.

## Steps to Setup React Native without Android Studio

### Step 1: Install Node.js and npm
**Note: nodejs version should be v.21**

You can install Node.js and npm using the following commands:

```bash
sudo apt update
curl -sL https://deb.nodesource.com/setup_21.x | sudo -E bash -
sudo apt install -y adb
sudo apt install -y nodejs
```



Verify the installation using:

```bash
node -v
npm -v
```

### Step 2: Install JDK

Install the Java Development Kit (JDK) using:

```bash
sudo apt install openjdk-17-jdk
```

Verify the installation using:

```bash
java -version
```

### Step 3: Install Android SDK

Instead of installing Android Studio, we'll install the Android SDK separately. Follow these steps:

1. Download the custom [Android Command Line Tools](https://github.com/1xrohit/Setup-ReactNative-on-Ubuntu-without-Android-Studio/releases/download/AndroidSDK/Android.zip)
2. Extract the downloaded archive to a suitable location on your system. eg path:  home/user/Android/
3. Add the Android SDK tools directory to your system PATH. You can do this by adding the following line to your `.bashrc`  file:
```bash
nano .bashrc
```
4. Then Add these lines in `.bashrc`  file
```bash
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin


```


Replace `/path/to/android-sdk` with the actual path where you extracted the Android SDK.

Reload the terminal or run `source ~/.bashrc` for the changes to take effect.

### Step 4: Install React Native CLI

Install the React Native CLI globally using npm:

```bash
npm install -g react-native-cli
```

### Step 5: Create a New React Native Project

Create a new React Native project using the following command:

```bash
npx react-native init MyReactNativeApp
```

Replace `MyReactNativeApp` with your desired project name.

### Step 6: Run Your React Native App

Navigate to your project directory and start the Metro Bundler:

```bash
cd MyReactNativeApp
npm start
```

Open a new terminal window and run your app on an Android emulator or a connected device:
```bash
adb devices
```

```bash
npx react-native run-android
```

Congratulations! You have successfully set up React Native on Linux or Ubuntu without relying on Android Studio.

## Additional Notes

- **Emulator**: You can use an emulator such as Genymotion or the Android Emulator provided with the Android SDK to run your React Native apps.
- **Device**: If you prefer testing on a physical device, enable USB debugging on your Android device and connect it to your computer via USB.

Refer to the [React Native documentation](https://reactnative.dev/docs/environment-setup) for more detailed information on setting up your development environment.

## Social MEDIA LINKS
I hope you've found this guide helpful

Follow me on [Twitter](https://x.com/1xrohit) for more tips.

