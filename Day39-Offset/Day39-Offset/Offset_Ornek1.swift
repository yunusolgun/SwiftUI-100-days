//
//  Offset_Ornek1.swift
//  Day39-Offset
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Offset_Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Offset Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Text("Offset metodunu kullanarak bir view'i x ve y koordinat değerlerine göre hareket ettirebiliriz").frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.pink).font(.title)
            
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.pink)
                    .frame(width:200,height:150)
                    .shadow(radius: 5)
                    .offset(x: -20, y: -20)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.pink)
                    .frame(width:200,height:150)
                    .shadow(radius: 5)
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.pink)
                    .frame(width:200,height:150)
                    .shadow(radius: 5)
                    .offset(x: 20, y: 20)
                
            }.padding()
            
            
            RoundedRectangle(cornerRadius: 15).foregroundColor(.blue).frame(width:200,height:150).padding().shadow(radius: 5).offset(x: 40, y: 40).border(Color.red,width: 4)
            
            
        }
    }
}

struct Offset_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Offset_Ornek1()
    }
}
