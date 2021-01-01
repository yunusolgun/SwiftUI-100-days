//
//  DaireselSekiller_Ornek2.swift
//  Day15-DaireselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct DaireselSekiller_Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Capsule Rounded Corner Style")
            Text("Capsule için 2 farklı rounded corner tipi var. Bunlardan herhangi birini seçebilirsiniz").frame(maxWidth:.infinity).background(Color.blue).foregroundColor(.white)
            
            Text("RoundedCornerStyle.circular").font(.title2)
            Capsule(style: .circular)
            
            Text("RoundedCornerStyle.continuous").font(.title2)
            Capsule(style: .continuous)
            
            Circle().fill(Color.red).frame(height:100).padding()
            Capsule().foregroundColor(.blue).frame(height:100).padding()
            
        }.font(.title)
    }
}

struct DaireselSekiller_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        DaireselSekiller_Ornek2()
    }
}
