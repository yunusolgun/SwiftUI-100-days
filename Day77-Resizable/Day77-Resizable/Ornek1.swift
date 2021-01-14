//
//  Ornek1.swift
//  Day77-Resizable
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Resizable örnek -1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("Sadece frame kullanarak")
            Image("manzara").frame(width: 200, height: 200).border(Color.green,width: 4)
            
            Text("Sadece resizable kullanarak")
            Image("manzara").resizable()
            
            Text("Sadece resizable ve frame kullanarak")
            Image("manzara").resizable().frame(width: 100, height: 100)
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
