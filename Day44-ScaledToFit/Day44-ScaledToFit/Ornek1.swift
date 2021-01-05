//
//  Ornek1.swift
//  Day44-ScaledToFit
//
//  Created by yunus olgun on 5.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Scaled To Fit Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("ScaledToFit metodunu kullanarak nesnelerin var olan en-boy oranlarına sadık kalarak ve onları aynı zamanda frem'inin içinde tutrak ölçeklendirir veya yeniden boyutlandırır").frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white).font(.system(size: 25))
            Text("ScaledToFit uygulanmamış nesneler").font(.system(size: 22)).foregroundColor(.red)
            
            HStack {
                Circle().fill(Color.red).frame(width: 150, height: 80).border(Color.yellow, width: 4)
                Image("manzara").resizable().frame(width:150, height:80).border(Color.red,width: 4)
                Text("Manzara fotoğrafı").frame(width:50,height: 50).border(Color.black,width: 4)
            }
            
            Text("ScaledToFit uygulanmış nesneler").font(.system(size: 22)).foregroundColor(.green)
            
            HStack {
                Circle().fill(Color.red).scaledToFit().frame(width:150, height:80).border(Color.yellow,width: 4)
                Image("manzara").resizable().scaledToFit().frame(width:200, height:90).border(Color.red,width: 4)
                Text("Manzara fotoğrafı").scaledToFit().frame(width:50,height: 50).border(Color.black,width: 4)
            }
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
