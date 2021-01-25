//
//  Ornek4_AnimasyonEtkiAlanlari1_3.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek4_AnimasyonEtkiAlanlari1_3: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing:20){
            Text("Animation options").font(.largeTitle)
            
            Text("Parent içinde view'in boyutlarını ve frame'ini değiştirme").foregroundColor(.gray)
            
            HStack {
                Color.yellow
                VStack {
                    Color.yellow.frame(minHeight:20)
                    Color.green.frame(width: change ? 200 : 100, height: change ? 250 : 100)
                    Color.yellow.frame(minHeight:20)
                }
                Color.yellow
            }
            Color.yellow
            
            Button("Change") { self.change.toggle() }
            
        }.font(.title).animation(.default)
    }
}

struct Ornek4_AnimasyonEtkiAlanlari1_3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek4_AnimasyonEtkiAlanlari1_3()
    }
}
