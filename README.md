# Setup React Native on Linux / Ubuntu without Android Studio

This guide outlines the process of setting up React Native development environment on Linux or Ubuntu without relying on Android Studio. This setup is particularly useful for developers who prefer minimalistic installations or have specific requirements for their development environment.

## Prerequisites

Before proceeding with the setup, ensure that the following prerequisites are met:

- **Node.js & npm**: Install Node.js and npm on your system. You can install them using a package manager like `apt`.
- **Java Development Kit (JDK)**: React Native requires JDK to be installed. Ensure JDK is installed on your system.
- **Android SDK**: Instead of installing Android Studio, we will install the Android SDK separately.

## Steps to Setup React Native without Android Studio

### Step 1: Install Node.js and npm

You can install Node.js and npm using the following commands:

```bash
sudo apt update
sudo apt install nodejs
sudo apt install npm
```

Verify the installation using:

```bash
node -v
npm -v
```

### Step 2: Install JDK

Install the Java Development Kit (JDK) using:

```bash
sudo apt install default-jdk
```

Verify the installation using:

```bash
java -version
```

### Step 3: Install Android SDK

Instead of installing Android Studio, we'll install the Android SDK separately. Follow these steps:

1. Download the [Android Command Line Tools](https://developer.android.com/studio#command-tools) from the official Android website.
2. Extract the downloaded archive to a suitable location on your system.
3. Add the Android SDK tools directory to your system PATH. You can do this by adding the following line to your `.bashrc` or `.bash_profile` file:

```bash
export PATH=$PATH:/path/to/android-sdk/tools:/path/to/android-sdk/platform-tools
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
react-native init MyReactNativeApp
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
react-native run-android
```

Congratulations! You have successfully set up React Native on Linux or Ubuntu without relying on Android Studio.

## Additional Notes

- **Emulator**: You can use an emulator such as Genymotion or the Android Emulator provided with the Android SDK to run your React Native apps.
- **Device**: If you prefer testing on a physical device, enable USB debugging on your Android device and connect it to your computer via USB.

Refer to the [React Native documentation](https://reactnative.dev/docs/environment-setup) for more detailed information on setting up your development environment.
