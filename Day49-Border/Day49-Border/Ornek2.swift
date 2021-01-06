//
//  Ornek2.swift
//  Day49-Border
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Border Örnek - 2").font(.largeTitle)
            Text("Rounded Border").font(.title).foregroundColor(.gray)
            
            Button("Yuvarlak Köşeli Butonlar",action: {})
                .padding().border(Color.red,width: 5).cornerRadius(15)
            
            Button("RoundedRectangle ve Buton",action: {})
                .padding().background(RoundedRectangle(cornerRadius: 15).stroke(Color.purple,lineWidth: 5))
            
            Button("Capsule ve Buton",action: {})
                .padding().background(Capsule().stroke(Color.orange,lineWidth: 5))
            
            Button("Dikdörtgen ve Buton",action: {})
                .padding().background(Rectangle().stroke(Color.black,lineWidth: 2).cornerRadius(20))
            
            Image("manzara").resizable().frame(width:200,height:100).background(RoundedRectangle(cornerRadius: 20).stroke(Color.red,lineWidth: 10).padding(-5))
            
            
            
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
