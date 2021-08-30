//
//  ImageView.swift
//  LoginAndCrud
//
//  Created by Bruno Coronado on 03/08/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 180)
            .padding()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
