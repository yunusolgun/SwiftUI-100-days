//
//  SecureField_Ornek2.swift
//  Day7-SecureField
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct SecureField_Ornek2: View {
    
    @State private var kullaniciAdi = ""
    @State private var parola = ""
    
    var body: some View {
        VStack(spacing:20) {
            Text("Secure Field Örnek - 2").font(.largeTitle)
            
            ZStack {
                RoundedRectangle(cornerRadius: 8).foregroundColor(.purple)
                TextField("Kullanıcı adınızı girin", text: $kullaniciAdi)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
            }.frame(height:50)
            .padding(.horizontal)
            
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.purple)
                .overlay(
                    SecureField("Parola", text: $parola).foregroundColor(.white).padding()
                )
                .frame(height:50)
                .padding(.horizontal)
            
        }
    }
}

struct SecureField_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        SecureField_Ornek2()
    }
}
