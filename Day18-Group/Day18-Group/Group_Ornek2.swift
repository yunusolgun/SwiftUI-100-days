//
//  Group_Ornek2.swift
//  Day18-Group
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Group_Ornek2: View {
    var body: some View {
        
        VStack(spacing:20) {
            Text("Group Örnek - 2").font(.largeTitle)
            
            Text("VStack:")
            VStack {
                Image(systemName: "leaf.arrow.circlepath").font(.largeTitle)
                Text("Geri dönüşüm çok önemli")
            }.padding().background(Color.green).cornerRadius(10)
            
            
            Divider()
            
            Text("Group:")
            Group {
                Image(systemName: "leaf.arrow.circlepath").font(.largeTitle)
                Text("Geri dönüşüm çok önemli")
            }.padding().background(Color.green).cornerRadius(10)
            
        }
        
    }
}

struct Group_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Group_Ornek2()
    }
}
