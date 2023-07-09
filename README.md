# `CinnoxVisitorCore`

This guide provides instructions for setting up and using the `CinnoxVisitorCore` framework in your iOS application.

## iOS Quick Start Guide

To quickly integrate the `CinnoxVisitorCore` framework into your iOS application, follow these steps:

1. Open your Xcode project and navigate to the project directory.
2. Open the `Podfile` file and add the following line:
```
pod 'CinnoxVisitorCore', '~> 1.0.0'
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

To use the `CinnoxVisitorCore` framework in your iOS application, follow these steps:

### Step 1: Add Initialization Code

In your `AppDelegate.swift` file, add the following code snippet to the `application(_:didFinishLaunchingWithOptions:)` method:

```swift
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

That's it! You have now successfully integrated the `CinnoxVisitorCore` framework into your iOS application. You can customize and extend its functionality as needed.

