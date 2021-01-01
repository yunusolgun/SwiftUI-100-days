//
//  Divider_Ornek1.swift
//  Day17-Divider
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Divider_Ornek1: View {
    var body: some View {
        
        VStack(spacing:20) {
            Text("Divider Örnek -1").font(.largeTitle)
            Text("Yatay Divider")
            Divider()
            
            Image(systemName: "arrow.left.and.right").font(.system(size: 60))
            Divider()
            
            HStack {
                Text("Vertical Divider")
                Divider()
                Image(systemName: "arrow.up.and.down").font(.system(size: 60))
                Divider()
                
            }
            
            
        }
        
    }
}

struct Divider_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Divider_Ornek1()
    }
}
