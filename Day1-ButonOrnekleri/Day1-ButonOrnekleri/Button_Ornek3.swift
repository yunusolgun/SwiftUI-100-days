//
//  Button_Ornek3.swift
//  Day1-ButonOrnekleri
//
//  Created by yunus olgun on 26.12.2020.
//

import SwiftUI

struct Button_Ornek3: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Button Örnek -3").font(.largeTitle)
            Text("Arka Planlı Butonlar").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
            Text("SwiftUI ile butonlara arka plan ataması yapabilir ve gölge ekleyebiliriz").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(maxWidth:.infinity).padding().background(Color.purple)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Sade Buton").padding().background(Color.purple).cornerRadius(12)
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Gölgelerin Gücü Adına").padding().background(Color.purple)
            }).shadow(color: .purple, radius: 20, x: 0, y: 5)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Köşeleri yuvarlak").padding(.init(top: 12, leading: 20, bottom: 12, trailing: 20)).background(Color.purple).cornerRadius(40)
            })
            
        }.frame(maxWidth:.infinity,maxHeight: .infinity).background(Color.black).foregroundColor(.white)
        
        
    }
}

struct Button_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Button_Ornek3()
    }
}
