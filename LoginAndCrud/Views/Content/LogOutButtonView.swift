//
//  LogOutButtonView.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 04/08/21.
//

import SwiftUI

struct LogOutButtonView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Button("Logout") {
            viewModel.logout()
        }
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .frame(width: 180, height: 60)
        .background(Color .red)
        .cornerRadius(50.0)
    }
}

struct LogOutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButtonView()
    }
}
