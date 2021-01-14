//
//  Ornek3.swift
//  Day72-ToggleStyle
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek3: View {
    @State private var durum1 = true
    @State private var durum2 = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("ToggleStyle Örnek - 3").font(.largeTitle)
            Text("Toggle Renk Değişimi").font(.title).foregroundColor(.gray)
            
           
            
            
            Toggle("", isOn: $durum1).toggleStyle(RenkliToggleStyle(baslik: "Renkli-1", durumAcikRenk: .gray, durumKapaliRenk: .black, daireRenk: .red))
            
            Toggle("", isOn: $durum2).toggleStyle(RenkliToggleStyle())
            
            
        }
    }
}

struct RenkliToggleStyle : ToggleStyle {
    var baslik = "Varsayaılan başlık"
    var durumAcikRenk: Color = .green
    var durumKapaliRenk: Color = .red
    var daireRenk: Color = .white
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Text(baslik)
            Spacer()
            Button(action: {configuration.isOn.toggle()}){
                RoundedRectangle(cornerRadius: 20, style: .circular)
                    .fill(configuration.isOn ? durumAcikRenk: durumKapaliRenk)
                    .frame(width: 50, height: 30)
                    .overlay(
                        Circle().fill(daireRenk).shadow(radius: 1,x:0,y:1).padding(1.5).offset(x: configuration.isOn ? 10: -10).animation(Animation.easeInOut(duration: 0.2))
                    )
            }
            
            
        }
    }
}

struct Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3()
    }
}
