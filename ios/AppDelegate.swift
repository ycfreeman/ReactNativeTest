//
//  AppDelegate.swift
//  ReactNativeTest
//
//  Created by Freeman on 12/12/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

import Foundation
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
    
    let jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(
      forBundleRoot: "index.ios",
      fallbackResource: nil)
    
    // initialize the rootView to fetch JS from the dev server
    let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "ReactNativeTest", initialProperties: nil, launchOptions: launchOptions)
    rootView?.backgroundColor = UIColor.white
    
    // Initialize a Controller to use view as React View
    let rootViewController = UIViewController()
    rootViewController.view = rootView
    
    // Set window to use rootViewController
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = rootViewController
    self.window?.makeKeyAndVisible()
    
    return true
  }
  
}
