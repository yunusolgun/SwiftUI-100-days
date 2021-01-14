//
//  Ornek2.swift
//  Day77-Resizable
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20){
            Text("Resizable örnek-2").font(.largeTitle)
            Image("manzara").resizable().frame(height:120).border(Color.green,width: 3)
            Text("Fit")
            Image("manzara").resizable().aspectRatio(contentMode: .fit).frame(height:100).border(Color.red,width: 3)
            
            Text("Fill ve Clipped")
            Image("manzara").resizable().aspectRatio(contentMode: .fill).frame(height:80).clipped().border(Color.gray,width: 3)
            
            
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
