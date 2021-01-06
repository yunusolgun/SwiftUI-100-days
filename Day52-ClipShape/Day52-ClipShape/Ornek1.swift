//
//  Ornek1.swift
//  Day52-ClipShape
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ClipSahpe Örnek -1").font(.largeTitle)
            Text("View'in belirli parçasını gösterme").font(.title).foregroundColor(.gray)
            
            Text("Orjinal görüntü")
            Image("manzara").resizable().frame(width: 100, height: 100)
            
            Text("Kırpılmış Görüntü (ClipShape)")
            HStack(spacing:20) {
                Image("manzara").frame(width: 100, height: 100).clipShape(Circle())
                Image("manzara").frame(width: 100, height: 100).clipShape(RoundedRectangle(cornerRadius: 20))
            }.padding(.bottom,40)
            
            Button(action: {}) {
                Text("Bildir").bold().font(.title).foregroundColor(.white).shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
            }.frame(width: 100, height: 50).background(Image("manzara").resizable().frame(width: 150, height: 75).clipShape(Capsule()))
            
            
            Button(action: {}) {
                Image(systemName: "bolt.fill").foregroundColor(.white).padding().background(Color.red).clipShape(Circle())
            }
            
            Button(action: {}) {
                Image(systemName: "bolt.fill").foregroundColor(.white).padding(.init(top: 10, leading: 20, bottom: 10, trailing: 20)).background(Color.green).clipShape(Capsule())
            }
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
