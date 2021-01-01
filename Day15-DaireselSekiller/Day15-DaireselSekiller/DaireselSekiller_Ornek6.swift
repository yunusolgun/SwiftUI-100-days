//
//  DaireselSekiller_Ornek6.swift
//  Day15-DaireselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct DaireselSekiller_Ornek6: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Dairesel şekiller ve butonlar")
            
            Button(action: {}) {
                Text("Capsule ve Buton").bold().padding()
            }.background(Capsule().strokeBorder(Color.purple,lineWidth: 1)).accentColor(.purple)
            
            
            Button(action: {}) {
                Text("Capsule Buton 2").foregroundColor(.white).bold().padding()
            }.background(Capsule().foregroundColor(.purple)).padding()
            
            
            Button(action: {}) {
                Image(systemName: "circle.grid.hex.fill").font(.largeTitle).padding().foregroundColor(.white)
            }.background(Circle().foregroundColor(.purple))
            
            
        }.font(.title)
    }
}

struct DaireselSekiller_Ornek6_Previews: PreviewProvider {
    static var previews: some View {
        DaireselSekiller_Ornek6()
    }
}
