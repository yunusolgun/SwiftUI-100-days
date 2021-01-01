//
//  Divider_Ornek2.swift
//  Day17-Divider
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Divider_Ornek2: View {
    var body: some View {
        
        VStack(spacing:20) {
            
            Text("Divider Örnek - 2").font(.largeTitle)
            Text("Kırmızı Çizgi")
            Divider().background(Color.red)
            
            Text("Mavi Çizgi")
            Divider().background(Color.blue)
            
            HStack {
                Divider().frame(height:40)
                Text("Dikey formatta yüksekliğini değişitirebilirsiniz")
                Divider().frame(height:40)
            }
            
            Divider().frame(width:300)
            Text("Yatay formatta genişiliğini değiştirebilirsiniz")
            Divider().frame(width:300)
            
            
        }
        
    }
}

struct Divider_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Divider_Ornek2()
    }
}
