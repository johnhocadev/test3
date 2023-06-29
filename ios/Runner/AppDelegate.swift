import UIKit
import Braintree

import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyC52c_uC4w6yWXs5rlRVCQMjvDMmnT2mA8")
    GeneratedPluginRegistrant.register(with: self)
    BTAppContextSwitcher.setReturnURLScheme("com.mycompany.fishingapp.braintree")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
