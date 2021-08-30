//
//  ContentView.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 02/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hi! :) You are logged")
                    .padding()
                LogOutButtonView()
            }.navigationBarTitle("Inicio")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
