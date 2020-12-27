//
//  Button_Ornek5.swift
//  Day1-ButonOrnekleri
//
//  Created by yunus olgun on 26.12.2020.
//

import SwiftUI

struct Button_Ornek5: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Button Örnek - 5").font(.largeTitle)
            Text("Butonlar ve SF Sembolleri").font(.title).foregroundColor(.gray)
            Text("SF Sembollerini butonlarla birlikte kullanalım").font(.title).frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white)
            
            Button(action: {}, label: {
                Text("Hediye Gönder").padding(.horizontal)
                Image(systemName: "gift.fill")
            }).padding().foregroundColor(.white).background(Color.orange).cornerRadius(15)
            
            
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                Text("Ara").padding(.horizontal)
            }).padding().foregroundColor(.white).background(Color.orange).cornerRadius(15)
            
            Button(action: {}, label: {
                VStack(spacing:5) {
                    Image(systemName: "video.fill")
                    Text("Kaydı başlat").padding(.horizontal)
                }.padding().foregroundColor(.white).background(Color.orange).cornerRadius(40)
            })
            
            
            Button(action: {}, label: {
                Image("manzara").overlay(
                    Text("MANZARAYA GEL").foregroundColor(.white).font(.title).bold()
                )
            }).cornerRadius(50)
            

            
        }
    }
}

struct Button_Ornek5_Previews: PreviewProvider {
    static var previews: some View {
        Button_Ornek5()
    }
}
