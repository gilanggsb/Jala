# Jala Test

[How to install flutter sdk](https://docs.flutter.dev/get-started/install)

## Notes
    1. change each "Project-Name" into your project

## Requirements
    1. Flutter Sdk : 3.19.6
    2. Android studio : 2021
    3. emulator / real device with adb debug 

## How To Run This Project

```
1. Clone this respoitory
2. Checkout branch to pre-production
3. Flutter pub get
4. Select build variant 
5. Run android emulator / ios 
6. Press f5 to start debugging or 
flutter run
```

## How To Create Model Using Freezed

1. Create file 'example_model.dart'
2. Copy code below and change with your model
    ```
    import 'package:freezed_annotation/freezed_annotation.dart';
    part 'example_model.freezed.dart';
    part 'example_model.g.dart';

    @freezed 
    class ExampleModel with _$ExampleModel{
    const factory ExampleModel({
        required String name,
        int? value,
    })=_ExampleModel;
    factory ExampleModel.fromJson(Map<String,dynamic> json)=>_$ExampleModelFromJson(json);
    }
    ```
3. Then run flutter pub run build_runner build --delete-conflicting-outputs
4. [for more information click this](https://pub.dev/packages/freezed)

## Common Error

1. Flutter SDK Not Found
```
    1. goto /android/local.properties
    2. in "flutter.sdk" change to your flutter sdk path

    ex : 
    sdk.dir=C:\\Users\\user.kp\\AppData\\Local\\Android\\sdk
    flutter.sdk=C:\\flutter
```

2. Error when pod install \
[for more information click this](https://stackoverflow.com/questions/52398435/cocoapods-could-not-find-compatible-versions-for-pod-firebase-core-cloud-fir)\
[or here](https://stackoverflow.com/questions/72660937/cocoapods-could-not-find-compatible-versions-for-pod-flutter-in-podfile-flut)
```
    1. goto ios folder -> PodFile
    2. find this comment in PodFile
       # Uncomment this line to define a global platform for your project
       platform :ios, '11.0'
    3. type "arch -x86_64 pod install" in your terminal     
```


## Build APP Bundle
Jika Create Baru
```
keytool -genkey -v -keystore C:\gitlab\Project-Name\keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key1
```

Project-Name**2022

---

Jika Gunakan Key Existing, pindahkan dahulu file keystore.jks :

Create a file named project-Name/android/key.properties that contains a reference to your keystore:

```
storePassword=Project-Name**2022
keyPassword=Project-Name**2022
keyAlias=key1
storeFile=C:\\gitlab\\Project-Name\\keystore.jks

```

```
flutter clean
flutter pub get
flutter build appbundle --no-shrink --build-name=1.0.0+1 --build-number=1 --release
```

Check C:\gitlab\Project-Name\build\app\outputs\bundle\productionRelease\

Cek Alias : keytool -v -list -keystore keystore.jks 
Cek Fingerprint : keytool -list -v -keystore C:\gitlab\Project-Name\keystore.jks -alias key1

[for more information](https://docs.flutter.dev/deployment/android)

## Build APK

    flutter build apk