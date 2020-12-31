//
//  TextField_Ornek4.swift
//  Day13-TextField
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextField_Ornek4: View {
    @State private var txtVeri = ""
    
    
    var body: some View {
        VStack(spacing:20) {
            Text("TextField Örnek - 4").font(.largeTitle)
            Text("Custom placeholder /Hint Text").font(.title).foregroundColor(.gray)
            
            ZStack(alignment: .leading){
                if txtVeri.isEmpty {
                    Text("Adınızı girin").bold().foregroundColor(Color(.systemGray3))
                }
                TextField("",text: $txtVeri).foregroundColor(.red).font(Font.system(size: 18, weight: .bold, design: .rounded))
                
            }.padding(.init(top: 4, leading: 10, bottom: 4, trailing: 10))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.orange,lineWidth: 2))
            .padding(.horizontal)
            
            
            ZStack(alignment: .leading){
                if txtVeri.isEmpty {
                    Text("Email adresinizi girin").italic().foregroundColor(.orange).opacity(0.4)
                }
                
                TextField("",text:$txtVeri)
                
            }.padding(.init(top: 5, leading: 10, bottom: 5, trailing: 10))
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray,lineWidth: 1))
            .padding(.horizontal)
            
            
        }
    }
}

struct TextField_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Ornek4()
    }
}
