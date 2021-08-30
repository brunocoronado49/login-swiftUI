//
//  AuthViewModel.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 03/08/21.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthViewModel: NSObject, ObservableObject {
    
    @Published var signedIn = false
    
    let auth = Auth.auth()
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func logIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) {
            [weak self] result, error in
            guard result != nil, error != nil else {
                return
            }
            
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
    func register(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) {
            [weak self] result, error in
            guard result != nil, error != nil else {
                return
            }
            
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
    func logout() {
        try? auth.signOut()
        self.signedIn = false
    }
    
}
