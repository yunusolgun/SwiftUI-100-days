//
//  Ornek1.swift
//  Day70-ListStyle
//
//  Created by yunus olgun on 13.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20){
            Text("ListStyle Örnek - 1").font(.largeTitle)
            
            List {
                Text("iOS için varsayılan list style")
                Text("Bu da 2.satır")
            }.listStyle(DefaultListStyle())
            
            
            Text("List nesnesinde GroupedListStyle görünümü de bulunmaktadır.")
            
            List {
                Text("iOS içinde GroupdeListStyle")
                Text("alta ve üste gri alan eklenir")
            }.listStyle(GroupedListStyle())
            
            
        }
        
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
