//
//  Ornek1.swift
//  Day75-Interpolation
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Interpolation Örnek -1").font(.largeTitle)
            Text("interpolasyon yaparak, görüntüler yeniden boyutlandırıldğında yumuşak geçişler ede edebilirsiniz")
                .frame(maxWidth:.infinity)
                .font(.title)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .layoutPriority(2)
            
            Text("Interpolasyon yok")
            Image("manzara").resizable().interpolation(.none)
            
            Text("Interpolasyon : high")
            Image("manzara").resizable().interpolation(.high)
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
