//
//  SecureField_Ornek1.swift
//  Day7-SecureField
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct SecureField_Ornek1: View {
    
    @State private var kullaniciAdi = ""
    @State private var parola = ""
    var body: some View {
        VStack(spacing:20) {
            Image("Logo").resizable().frame(width:100,height:100).padding(.bottom,150)
            
            Text("Secure Field Örnek - 1").font(.largeTitle)
            Text("Uygulama Login Ekranı").foregroundColor(.red).font(.headline)
            
            TextField("Kullanıcı adınızı girin...", text: $kullaniciAdi)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
           SecureField("Parola", text: $parola)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
            
            HStack {
                Spacer()
                Button("Giriş Yap") {
                    
                }
  
            }.padding(.trailing,20)
            
            Spacer()
        }
    }
}

struct SecureField_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        SecureField_Ornek1()
    }
}
