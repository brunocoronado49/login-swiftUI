//
//  MainView.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 02/08/21.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        VStack {
            NavigationView {
                if viewModel.signedIn {
                    ContentView()
                } else {
                    LoginView()
                }
            }.onAppear {
                viewModel.signedIn = viewModel.isSignedIn
            }
        }.padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
