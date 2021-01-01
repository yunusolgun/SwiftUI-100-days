//
//  DaireselSekiller_Ornek1.swift
//  Day15-DaireselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct DaireselSekiller_Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Circular Shapes Örnek - 1").font(.largeTitle)
            Text("Daire - Circle")
            
            Circle().padding()
            
            Text("Capsule")
            
            Capsule().padding()
            
            Text("Ellipse")
            
            Ellipse().padding()
            
        }.font(.title)
    }
}

struct DaireselSekiller_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        DaireselSekiller_Ornek1()
    }
}
