//
//  Group_Ornek1.swift
//  Day18-Group
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Group_Ornek1: View {
    var body: some View {
        
        VStack(spacing:10) {
            Text("Group Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Text("3.View")
            Text("4.View")
            Text("5.View")
            Text("6.View")
            Text("7.View")
            Text("8.View")
            Text("9.View")
            
            // 10.View
            Group {
                Text("Child View 1 (Group nesnesinde)")
                Text("Child View 2 (Group nesnesinde)")
                Text("Child View 3 (Group nesnesinde)")
            }
            
        }
        
    }
}

struct Group_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Group_Ornek1()
    }
}
