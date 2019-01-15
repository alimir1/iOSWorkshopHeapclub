//
//  AppDelegate.swift
//  SampleApp
//
//  Created by Ali Mir on 1/13/19.
//  Copyright © 2019 Ali Mir. All rights reserved.
//


/*

 int main(arg) {
 return UIApplication()
 }


 UIApplication:
 delegate: UIApplicationDelegate




 */

/*

 protocol Human {
    var age: String { get set }
    var name: String { get set }


    func sleep()
    func eat()
 }

 class SomeHuman: Human {
 var age: String
 var name: String


 func sleep() {

 }

 func eat() {

 }
 }

var human = Human()

class SomeDelegate: UIApplicationDelegate {
    func application(application: UIApplication, didFinishLaunchi...: Bool) {

    }
 }

var someAppdeleage = SomeDelegate()
 */

// What is the process of starting the iOS application?
// ANSWER:
// Step 1: iOS calls Main()
// Step 2: Main creates Application Delegate
// Step 3: Once your application launches to the screen, "didFinishLaunchingWithOptions" gets triggered
// Step 4: Your app invokes the first ViewController via UIWindow object
// Step 5: You can use navigation to take users to various screens

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // STEP 4
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.


        // CUSTOM ROOT CONTROLLER (Default from storyboard file)
//        window = UIWindow(frame: UIApplication.)
//        window?.makeKeyAndVisible()
//        window?.rootViewController = ViewController()

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

