//
//  Ornek1.swift
//  Day56-CornerRadius
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Corner Radius Örnek -1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("Yuvarlak köşeli şekiller")
            Rectangle().foregroundColor(.blue).frame(width:150, height:50).cornerRadius(15)
            RoundedRectangle(cornerRadius: 15).foregroundColor(.blue).frame(width:150, height:50)
            
            Text("Yuvarlak köşeli kontrol nesneleri")
            Button(action: {}){
                Text("Button")
            }.padding().background(Color.blue).foregroundColor(.white).cornerRadius(15)
            
            HStack {
                Text("Burası aslında HStack nesnesi")
            }.padding().frame(maxWidth: .infinity).background(Color.blue).foregroundColor(.white).cornerRadius(15).padding(.horizontal)
            
            Image("manzara").cornerRadius(30)
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
