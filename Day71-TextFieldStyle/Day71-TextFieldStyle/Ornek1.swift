//
//  Ornek1.swift
//  Day71-TextFieldStyle
//
//  Created by yunus olgun on 13.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var txtGirilenVeri = ""
    
    var body: some View {
        VStack(spacing:20) {
            Text("TextFieldStyle Örnek -1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            
            Group {
                Text("DefaultTextFieldStyle").font(.title)
                TextField("DefaultTextFieldStyle",text:$txtGirilenVeri).textFieldStyle(DefaultTextFieldStyle())
                
                Text("PlainTextFieldStyle").font(.title)
                TextField("PlainTextFieldStyle",text:$txtGirilenVeri).textFieldStyle(PlainTextFieldStyle())
                
                
                Text("RoundedBorderTextFieldStyle").font(.title)
                TextField("RoundedBorderTextFieldStyle",text:$txtGirilenVeri).textFieldStyle(RoundedBorderTextFieldStyle())
                
            }.padding()
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
