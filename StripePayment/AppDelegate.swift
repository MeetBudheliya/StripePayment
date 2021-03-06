//
//  AppDelegate.swift
//  StripePayment
//
//  Created by MAC on 05/03/21.
//

import UIKit
import Stripe
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var token = Data()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            StripeAPI.defaultPublishableKey = "pk_live_51IOGzFIpS16oMvYK1qTK4HoMIlCzOYD4h8FOn6zVFPLiCSw3JKp2DCNhRHGEK2ZWMhrhIuJmK04E4K8mNBNuHhdL00eprXDHyx"
            // do any other necessary launch configuration
        UIApplication.shared.registerForRemoteNotifications()
//        token = UserDefaults.standard.data(forKey: "DeviceToken")!
            return true
        }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
     UserDefaults.standard.set(deviceToken, forKey: "DeviceToken")
    }

}

