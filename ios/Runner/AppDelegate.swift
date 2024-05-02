import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: "jala_main_channel", binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler({
                  [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
                  if call.method == "show_native_dialog" {
                      if let arguments = call.arguments as? [String: Any],
                         let title = arguments["title"] as? String,
                         let message = arguments["message"] as? String {
                          self?.showAlert(title: title, message: message)
                          result(nil)
                      } else {
                          result(FlutterError(code: "INVALID_ARGUMENT", message: "Missing title or message", details: nil))
                      }
                  } else {
                      result(FlutterMethodNotImplemented)
                  }
    })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func showAlert(title: String, message: String) {
           let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
           alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
           window?.rootViewController?.present(alertController, animated: true, completion: nil)
    }
}
