//
//  ContentView.swift
//  Day1-ButonOrnekleri
//
//  Created by yunus olgun on 26.12.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Button Örnek -1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("Eğer sadece metinden ibaret bir buton oluşturmak istiyorsanız, butonun üzerinde gösterilmesini istediğiniz metni parametre olarak göndermeniz yeterli olur").padding().font(.title).background(Color.pink)
            
            Button("Varsayılan Buton Tipi") { }
            
            Text("Butonun üzerindeki yazıyı isteğinize göre düzenliyebilirsiniz.").frame(maxWidth:.infinity).padding().font(.title).background(Color.pink)
            
            Button(action: { }) {
                Text("Buton Metni").font(.title).bold()
            }
            
            Divider()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Yeşil Renk").foregroundColor(.green).padding()
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Thin Font Weight").foregroundColor(.blue).fontWeight(.thin).padding()
            })
            
            
        }.background(Color.black).foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()

        }
    }
}
