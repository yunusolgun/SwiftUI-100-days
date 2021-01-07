//
//  Ornek2.swift
//  Day56-CornerRadius
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Corner Radius Örnek -2").font(.largeTitle)
            Text("Tamamen yuvarlak kenarlı görünümleri elde etmenizin birçok yolu var.").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white).font(.title)
            
            Text("Capsule şeklini kullan").font(.title)
            
            HStack {
                
                Button(action: {}) {
                    Image(systemName: "chart.bar.fill").padding()
                    Text("Button").padding()
                }.padding(.horizontal).background(Capsule().foregroundColor(.blue)).foregroundColor(.white)
                
                
                Button(action: {}) {
                    Image(systemName: "chart.bar.fill").padding()
                    Text("Button").padding().offset(x: -20, y: 0)
                }.padding(.vertical).background(Capsule().foregroundColor(.blue)).foregroundColor(.white)
                
            }
            
            
            RoundedRectangle(cornerSize: CGSize(width: 60, height: 60)).foregroundColor(.blue).frame(width:150, height:50)
            
            Text("CornerRadius metoduna genişlik-yükseklik değerinin yarısını veya daha büyük bir değeri göndererek de bu görünümü oluşturabilirsiniz.").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white)
            Image("manzara").cornerRadius(.greatestFiniteMagnitude)
            
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
