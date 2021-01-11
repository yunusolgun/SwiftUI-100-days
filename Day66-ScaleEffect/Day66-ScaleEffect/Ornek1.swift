//
//  Ornek1.swift
//  Day66-ScaleEffect
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ScaleEffect Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Group {
                Text("Önce")
                Text("Metin Ölçeklendirme").foregroundColor(.red)
                Text("Bu metnin boyutunu 3 katına çıkaracağız.")
                Text("Sonra(3x)")
                Text("Metin Ölçeklendirme").foregroundColor(.green).scaleEffect(3)
                
                Divider().padding(.top,20)
                Text("Önce")
                Image("manzara").border(Color.pink,width: 5)
                Image("manzara").scaleEffect(1.6).border(Color.pink,width: 5).opacity(0.7)

            }
            
            
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
