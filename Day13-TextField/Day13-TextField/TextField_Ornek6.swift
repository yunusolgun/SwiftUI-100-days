//
//  TextField_Ornek6.swift
//  Day13-TextField
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextField_Ornek6: View {
    @State private var txtVeri = ""
    @State private var disable1 = false
    @State private var adiSoyadi = "yunus olgun"
    
    
    var body: some View {
        
        VStack(spacing:15) {
            TextField("Telefon numaranızı girin", text: $txtVeri)
                .keyboardType(.phonePad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Parolanızı girin", text: $txtVeri)
                .keyboardType(.numbersAndPunctuation)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Mesajınızı girin", text: $txtVeri)
                .disableAutocorrection(true)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Toggle("Bilgiler düzenlenmesin", isOn: $disable1).padding(.horizontal)
            
            TextField("Adınız soyadınız", text: $adiSoyadi)
                .disableAutocorrection(false)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .disabled(disable1)
                .opacity(disable1 ? 0.5 : 1)
            
        }
        
    }
}

struct TextField_Ornek6_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Ornek6()
    }
}
