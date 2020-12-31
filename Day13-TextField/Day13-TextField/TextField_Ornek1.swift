//
//  TextField_Ornek1.swift
//  Day13-TextField
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextField_Ornek1: View {
    
    @State private var txtGiris = ""
    
    var body: some View {
        VStack(spacing:20) {
            Text("TextField Örnek-1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            
            Image(systemName: "arrow.down.circle")
            
            TextField("", text: $txtGiris)
            
            Image(systemName: "arrow.up.circle")
            
            TextField("", text: $txtGiris).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.horizontal)
            
            VStack(spacing:20) {
                TextField("Buraya title text girilecek", text: $txtGiris).textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Kullanıcı adınızı girin", text: $txtGiris)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Parola", text: $txtGiris)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }.font(.none).padding()
            
        }.font(.title)
        
    }
}

struct TextField_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Ornek1()
    }
}
