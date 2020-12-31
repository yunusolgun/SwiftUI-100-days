//
//  TextField_Ornek3.swift
//  Day13-TextField
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextField_Ornek3: View {
    @State private var txtMetinVar = "Metin Var"
    @State private var txtMetinYok = ""
    @State private var txtKenarlikli = "Kenarlık Var"
    
    var body: some View {
        VStack(spacing:20) {
            Text("TextField Örnek - 3").font(.largeTitle)
            
            TextField("Placeholder text", text:$txtMetinYok)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.init(hue: 0.126, saturation: 0.46, brightness: 0.96)))
                .padding()
            
            TextField("",text:$txtKenarlikli)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.orange, lineWidth: 3))
                .padding()
            
            TextField("",text:$txtMetinVar)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.orange)
                .padding()
            
            
        }
    }
}

struct TextField_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Ornek3()
    }
}
