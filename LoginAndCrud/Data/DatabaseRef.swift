//
//  DatabaseRef.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 02/08/21.
//

import Foundation
import FirebaseDatabase

class DatabaseRef {
    var ref: DatabaseReference!
    
    init() {
        configureDatabase()
    }
    
    func configureDatabase() {
        ref = Database.database().reference()
    }
    
}
