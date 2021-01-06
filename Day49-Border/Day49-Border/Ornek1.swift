//
//  Ornek1.swift
//  Day49-Border
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Border Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("Birçok view'e border ekleyebilirsiniz. Varsayılan kalınlık değeri: 1")
                .frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white).font(.title)
            
            Button(action: {}) {
                Text("Button ve Border").padding()
            }.border(Color.red)
            
            Image("manzara").resizable().frame(width:100, height:100).border(Color.red,width: 5)
            
            RoundedRectangle(cornerRadius: 20).fill(Color.red).padding().border(Color.black,width: 5).padding().frame(width:100, height:100)
            
            Circle().fill(Color.purple).scaledToFit().border(Color.black,width: 10).frame(width:100, height:100).padding()
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
