//
//  TextView_Ornek2.swift
//  Day12-Text
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextView_Ornek2: View {
    
    @State private var duzenelmeAktif = true
    
    var body: some View {
        VStack(spacing:20) {
            Text("Bold").bold()
            Text("Italic").italic()
            Text("Üstü çizili").strikethrough()
            Text("Kırmızı üstü çizili").strikethrough(duzenelmeAktif, color: .red)
            Text("Yazının rengi mavi").foregroundColor(.blue)
            Text("Altı çizili").underline()
            Text("Mor altı çizili").underline(duzenelmeAktif, color: .purple)
            
            Toggle("Düzenleme Aktif: ", isOn: $duzenelmeAktif)
            
            VStack(spacing:10) {
                Text("Senden sonra arabaya binip yola çıkabilirim istersen").padding(.horizontal).foregroundColor(.red).lineLimit(1)
                
                Text("Senden sonra arabaya binip yola çıkabilirim istersen").padding(.horizontal).foregroundColor(.green).lineLimit(1).allowsTightening(true)
                
                Text("Bugün hava sıcak olmasına rağmen insanlar dışarda gezmeye devam ediyor").foregroundColor(.red).padding(.horizontal).lineLimit(1).minimumScaleFactor(0.4)
            }
        }
    }
}

struct TextView_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        TextView_Ornek2()
    }
}
