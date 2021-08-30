//
//  LoginView.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 04/08/21.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            ImageView()
            TextFields()
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
