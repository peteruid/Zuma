//
//  AppDelegate.swift
//  Zuma
//
//  Created by Peter Nelson on 10/23/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var firstLaunch:Bool = true
    var networkEstablished = false
    var currentZumaBeingSetUpIsMaster = true

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}



/*
 
 // programatic background threadding
 func heavyWork() {
    self.actvityIndicator.startAnimating()
 
    DispatchQueue.global(qos: .background).async {
 
        // ...
        // heavy loop codes here
        // ...
 
        DispatchQueue.main.async {
            self.actvityIndicator.stopAnimating()
        }
    }
 }
 
 
 
 // programatic delay of a command on the main thread
 DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
    self?.navigationItem.leftBarButtonItem = self?.backButtonBackup
 }
 
 DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500)) {
    os_log("500 msec seconds later")
 }
 
 DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(1_000_000)) {
    os_log("1m μs seconds later")
 }
 
 DispatchQueue.main.asyncAfter(deadline: .now() + .nanoseconds(1_500_000_000)) {
    os_log("1.5b nsec seconds later")
 }

 
 func delay(delay: Double, closure: @escaping () -> ()) {
 
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        closure()
    }
 }

 delay(delay: 1) {
    print("Hi!")
 }
 
 
 
 //programatically create buttons
 
 let myButton = UIButton() // if you want to set the type use like UIButton(type: .RoundedRect) or UIButton(type: .Custom)
 myButton.setTitle("Hi, Click me", for: .normal)
 myButton.setTitleColor(UIColor.blue, for: .normal)
 myButton.frame = CGRect(x: 15, y: 50, width: 300, height: 500)
 
 myButton.addTarget(self, action: #selector(pressedAction(_:)), for: .touchUpInside)
 self.view.addSubview( myButton)
 
 
 
 func pressedAction(_ sender: UIButton) {
    // do your stuff here
    print("you clicked on button \(sender.tag)")
 }

 
 */
