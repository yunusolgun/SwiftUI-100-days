//
//  Ornek3.swift
//  Day69-ButtonStyle
//
//  Created by yunus olgun on 12.01.2021.
//

import SwiftUI

struct Ornek3: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ButtonStyle Örnek - 3").font(.largeTitle)
            Text("Custom still tanımlama -2").font(.title).foregroundColor(.gray)
            
            Button("Manuel oluşturuldu", action: { }).padding().background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.blue,lineWidth: 2))
            
            Button("Buton Stil kullanıldı", action: { }).buttonStyle(OutlineButtonStyle())
            
            Button("Detayları göster", action: { }).buttonStyle(PressedButtonStyle())
            
            Button("Varsayılan parametreli buton", action: { }).buttonStyle(ParametreliButtonStyle())
            
            Button("Kırmızı parametreli buton", action: { }).buttonStyle(ParametreliButtonStyle(butonRenk: Color.red))
            
            Button("Yeşil parametreli buton", action: { }).buttonStyle(ParametreliButtonStyle(butonRenk: Color.green))
            
        }
    }
}


struct OutlineButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.padding().background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.blue,lineWidth: 2)).foregroundColor(.blue)
    }
}

struct PressedButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(configuration.isPressed ? Color.red : Color.green))
            .opacity(configuration.isPressed ? 0.5:1)
            .foregroundColor(.white)
            
           
    }
}


struct ParametreliButtonStyle : ButtonStyle {
    var butonRenk = Color.blue
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.opacity(configuration.isPressed ? 0.3 : 1)
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).strokeBorder(butonRenk, lineWidth: 3))
            .foregroundColor(butonRenk)
    }
}

struct Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3()
    }
}
