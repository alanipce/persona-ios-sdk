//
//  AppDelegate.swift
//  DemoApp
//
//  Created by Paulo Fierro on 9/24/20.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        do {
            // TODO: Look into Persona crash when running on iOS 15.5
            let _ = try Realm()
        } catch {
            print("Error initializing realm error=\(error.localizedDescription)")
        }
        return true
    }
}
