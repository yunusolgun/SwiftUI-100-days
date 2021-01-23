//
//  Ornek9_AnimasyonVeParametreler3.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek9_AnimasyonVeParametreler3: View {
    @State private var fontChange = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon Font Size").font(.largeTitle)
            
            Toggle(isOn: $fontChange, label: {
                Text("Animasyon uygula")
            }).padding()
            
            Spacer()
            
            Text("SwiftUI").font(.system(size: fontChange ? 80 : 20))
                .animation(.easeInOut)
                .border(Color.blue)
            
            
            Text("Merhaba").font(.system(size: 20))
                .scaleEffect(fontChange ? 4 : 1)
                .animation(.easeInOut)
                .border(Color.blue,width: 2)
            
            Spacer()
            
            
        }.font(.title)
    }
}

struct Ornek9_AnimasyonVeParametreler3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek9_AnimasyonVeParametreler3()
    }
}
