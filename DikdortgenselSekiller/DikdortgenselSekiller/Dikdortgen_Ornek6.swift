//
//  Dikdortgen_Ornek6.swift
//  DikdortgenselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Dikdortgen_Ornek6: View {
    @State private var txtKullaniciAdi = "Kullanici Adı"
    var body: some View {
        VStack(spacing:10) {
            Text("Rectangular Örnek - 6").font(.largeTitle)
            
            Button(action: {}, label: {
                Text("Rounded Rectangle ve Buton")
                    .bold()
                    .padding()
            }).background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.red,lineWidth: 2))
            .accentColor(.black)
            
            Button(action: {}, label: {
                Text("Rounded Rectangle ve Buton 2")
                    .bold()
                    .foregroundColor(.white)
                    .padding()
            }).background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
            
            
            TextField("", text: $txtKullaniciAdi).foregroundColor(.white).padding(10)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.blue)).padding()
            
        }
    }
}

struct Dikdortgen_Ornek6_Previews: PreviewProvider {
    static var previews: some View {
        Dikdortgen_Ornek6()
    }
}
