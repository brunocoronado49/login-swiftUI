//
//  LoginAndCrudApp.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 02/08/21.
//

import SwiftUI
import Firebase

@main
struct LoginAndCrudApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            let viewModel = AuthViewModel()
            AppView()
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
        
    }
}

