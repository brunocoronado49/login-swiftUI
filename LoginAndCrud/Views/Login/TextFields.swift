//
//  TextFields.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 03/08/21.
//

import SwiftUI

struct TextFields: View {
    
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            TextField("Correo", text: $email)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding()
                .background(Color(hex: 0xecf0f1))
                .cornerRadius(20.0)
                .padding(.bottom, 20)
            SecureField("Contraseña", text: $password)
                .padding()
                .background(Color(hex: 0xecf0f1))
                .cornerRadius(20.0)
                .padding(.bottom, 20)
            HStack {
                Button("SignIn") {
                    guard !email.isEmpty, !password.isEmpty else {
                        return
                    }
                    viewModel.logIn(email: email, password: password)
                    viewModel.signedIn = true
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 180, height: 60)
                .background(Color .green)
                .cornerRadius(20.0)
                
                Button("SignUp") {
                    guard !email.isEmpty, !password.isEmpty else {
                        return
                    }
                    viewModel.register(email: email, password: password)
                    viewModel.signedIn = true
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 180, height: 60)
                .background(Color .blue)
                .cornerRadius(20.0)
            }
        }.padding()
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
