[![Swift](https://img.shields.io/badge/Swift-5.7_5.8-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.7_5.8-Orange?style=flat-square)
[![iOS](https://img.shields.io/badge/iOS-14+-blue?style=flat-square)](https://img.shields.io/badge/iOS-14-blue?style=flat-square)
[![LICENSE](https://img.shields.io/badge/LICENSE-MIT-black?style=flat-square)](https://img.shields.io/badge/iOS-14-blue?style=flat-square)

# `CinnoxVisitorCoreSDK`

This guide provides instructions for setting up and using the `CinnoxVisitorCoreSDK` framework in your iOS application.

## iOS Quick Start Guide

To quickly integrate the `CinnoxVisitorCoreSDK` framework into your iOS application, follow these steps:

1. Open your Xcode project and navigate to the project directory.
2. Open the `Podfile` file and add the following line:
```
    pod 'webrtc-ios' , :git => 'https://gitlab.com/sky0926a/M800CoreSDK.git'
    pod 'M800CoreSDK', :git => 'https://gitlab.com/sky0926a/M800CoreSDK.git'
    pod 'M800MessageSDK', :git => 'https://gitlab.com/sky0926a/M800CoreSDK.git'
    pod 'M800CallSDK', :git => 'https://gitlab.com/sky0926a/M800CoreSDK.git'
    pod 'LiveConnectUIKit_iOS', :git => 'https://gitlab.com/sky0926a/M800CoreSDK.git'
    pod 'CinnoxVisitorCoreSDK', :git => 'https://gitlab.com/sky0926a/M800CoreSDK.git'
```
3. Save the `Podfile` and run the command `pod install` in the project directory to install the framework.
> Note: Make sure you have CocoaPods installed on your system before running the `pod install` command.
4. Once the installation is complete, open the generated `.xcworkspace` file to access your project in Xcode.

## Adding a Sample App to a Cinnox Project

To add a sample app to a Cinnox project, follow these steps:

1. Use the `bundleID` from your Xcode project.
2. Download the generated `M800ServiceInfo.plist` file from Cinnox.
3. Replace the existing `plist` file in the root directory of the sample app with the downloaded `M800ServiceInfo.plist` file.

## How to Use

To use the `CinnoxVisitorCoreSDK` framework in your iOS application, follow these steps:

### Step 1: Add Initialization Code

In your `AppDelegate.swift` file, add the following code snippet to the `application(_:didFinishLaunchingWithOptions:)` method:

```swift
import CinnoxVisitorCoreSDK

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let core = CinnoxVisitorCore.initialize(serviceName: "tpoffice.cx-tb.cinnox.com", delegate: self)
    core.configure()
    return true
}
```

This code initializes the `CinnoxVisitorCore` with a service name and a delegate object. Adjust the `serviceName` parameter according to your specific Cinnox service configuration.

### Step 2: Add Widget View to View Controller
In your desired view controller, add the following code snippet:


```swift
import UIKit
import CinnoxVisitorCoreSDK

class ViewController: UIViewController {
    var widget = CinnoxVisitorWidget(frame: .init(x: 100, y: 100, width: 50, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Add any additional setup after loading the view.
        view.addSubview(widget)
    }
}
```

This code creates an instance of `CinnoxVisitorWidget` and adds it as a subview to your view controller's view. Adjust the `frame` parameter according to your desired widget position and size.

That's it! You have now successfully integrated the `CinnoxVisitorCoreSDK` framework into your iOS application. You can customize and extend its functionality as needed.

### Step 3: Setup APNS Certificate
We are setting up your product's APNS (Apple Push Notification Service) integration to provide efficient push notification services. In order to proceed, we need you to provide app `Bundle Identifier`, `Team ID`, `Key ID` and `.p8` Certificates file from your Apple Developer account.

Please follow the instructions below to provide the required details:

#### 1. Apple Developer Program Team ID
Your Team ID is a unique identifier assigned by Apple. You can find it by:

Going to Apple Developer Membership (https://developer.apple.com/account/#/membership)
Your Team ID will be listed there
#### 2. Key ID of your APNS Key
Each APNS Key has a unique Key ID. You can find the Key ID by:

Going to Apple Developer Certificates, Identifiers & Profiles > Keys (https://developer.apple.com/account/resources)
If you already have an APNS Key, the Key ID will be listed there
#### 3. p8 file of your APNS Key
The APNS Key should be downloaded as a .p8 file. If you haven't created an APNS Key yet, you can do so by:

Signing in to your Apple Developer account
Going to Certificates, Identifiers & Profiles > Keys
Clicking the "+" button to create a new key
Entering a key name and checking the "Apple Push Notifications service (APNs)" option
Clicking "Continue" and then "Register"
On the confirmation page, click "Download" to save the .p8 file
Please provide us with these details so that we can proceed with the setup. If you have any questions or need assistance, feel free to get in touch.

We appreciate your prompt attention to this matter and look forward to delivering the best possible service.

