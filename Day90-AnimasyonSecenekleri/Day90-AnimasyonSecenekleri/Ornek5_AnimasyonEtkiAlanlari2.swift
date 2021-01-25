//
//  Ornek5_AnimasyonEtkiAlanlari2.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek5_AnimasyonEtkiAlanlari2: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Options").font(.largeTitle)
            Text("Scope - Farklı Animasyonlar").foregroundColor(.gray)
            
            Button("Change") { self.change.toggle() }
            
            Text("Parent Animasyon Kullanımı")
            RoundedRectangle(cornerRadius: 20,style: .continuous)
                .foregroundColor(change ? .yellow : .red)
                .frame(width:100, height:100)
                .offset(x: change ? 140 : -140, y:0)
            
            Text("View'in kendi animasyonu kullanması")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .yellow : .orange)
                .frame(width:100, height:100)
                .offset(x: change ? 140 : -140, y:0)
                .animation(.easeInOut(duration: 1))
            
        }.font(.title).animation(.easeOut)
    }
}

struct Ornek5_AnimasyonEtkiAlanlari2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek5_AnimasyonEtkiAlanlari2()
    }
}
