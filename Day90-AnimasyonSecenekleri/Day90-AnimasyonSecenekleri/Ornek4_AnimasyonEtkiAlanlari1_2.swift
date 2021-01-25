//
//  Ornek4_AnimasyonEtkiAlanlari1_2.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek4_AnimasyonEtkiAlanlari1_2: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing:20){
            Text("Animation Options").font(.largeTitle)
            Text("Scope - Parant & Children").foregroundColor(.gray)
            
            Text("Parent'a uygulanan animasyon işlemleri o view'in barındırdığı tüm child view'lere uygulanır").padding(.all, 10)
                .frame(maxWidth:.infinity)
                .background(Color.yellow)
            
            
            HStack {
                Color.blue.hueRotation(.degrees(change ? 180 : 0))
                Color.green.hueRotation(.degrees(change ? 180 : 0))
                Color.red.hueRotation(.degrees(change ? 180 : 0))
            }.animation(.linear)
            
            Button("Change") { self.change.toggle() }
            
        }.font(.title)
    }
}

struct Ornek4_AnimasyonEtkiAlanlari1_2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek4_AnimasyonEtkiAlanlari1_2()
    }
}
