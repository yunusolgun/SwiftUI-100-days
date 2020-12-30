//
//  Picker_Ornek1.swift
//  Day6-Picker
//
//  Created by yunus olgun on 29.12.2020.
//

import SwiftUI

struct Picker_Ornek1: View {
    @State private var adresIl = 2
    @State private var secilenBaskent = "Türkiye"
    
    var body: some View {
        VStack(spacing:20){
            Text("Picker").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("Picker içindeki her bir elemena id değerini atamanız gerekiyor").font(.title).frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.black).layoutPriority(1)
             
            Picker(selection: $adresIl, label: Text("Adres :")) {
                Text("Ankara").tag(0)
                Text("İstanbul").tag(1)
                Text("İzmir").tag(2)
                Text("Konya").tag(3)
            }.padding(.horizontal)
            
            
            Text("Etiket değerleri String,Int ve Bool tipinden olabilir").font(.title).frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color(red: 0.1, green: 0.2, blue: 0.3))
            
            Picker(selection: $secilenBaskent, label: Text("Başkentler"), content: {
                Text("Londra").tag("İngiltere")
                Text("Paris").tag("Fransa")
                Text("Ankara").tag("Türkiye")
                Text("Berlin").tag("Almanya")
                Text("Moskava").tag("Rusya")
            }).padding(.leading)
            
            
        
        }
    }
}

struct Picker_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Ornek1()
    }
}
