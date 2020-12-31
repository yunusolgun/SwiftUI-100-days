//
//  TextField_Ornek5.swift
//  Day13-TextField
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextField_Ornek5: View {
    @State private var txtVeri = ""
    
    var body: some View {
        VStack(spacing:20) {
            
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass").foregroundColor(.gray)
                    TextField("Adınız",text: $txtVeri)
                    Image(systemName: "slider.horizontal.3")
                }
                Divider()
            }.padding()
            
            HStack {
                Image(systemName: "envelope").foregroundColor(.gray).font(.headline)
                TextField("Email adresiniz",text:$txtVeri)
            }.padding()
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray,lineWidth: 1))
            .padding()
            
            HStack {
                TextField("Ülkeniz",text: $txtVeri)
                Button(action: {}, label: {
                    Image(systemName: "chevron.right").padding(.horizontal)
                }).accentColor(.orange)
            }.padding()
            .overlay(Capsule().stroke(Color.gray,lineWidth: 1))
            .padding()
            
        }
        
    }
}

struct TextField_Ornek5_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Ornek5()
    }
}
