//
//  LayoutPriority_Ornek1.swift
//  Day38-LayoutPriority
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct LayoutPriority_Ornek1: View {
    var body: some View {
        VStack(spacing:10) {
            Text("Layout Priority Örnek - 1").font(.largeTitle)
            Text("Layout öncelik değerlerini kullanarak, viewlere boşluk atanma zamanı geldiğinde hangi viewlerin daha öncelikli olacağını belirliyebiliyoruz.").frame(maxWidth:.infinity).padding().background(Color.orange)
            
            Text("Layout priority değeri yok (değer: 0)")
            VStack(alignment:.leading, spacing:10) {
                HStack {
                    Image("manzara").resizable().frame(width:100,height:100).mask(Circle())
                    Text("Güzel manzara").font(.largeTitle)
                }
                
                Text("Layout öncelik değeri, dağıtılacak olan boşluk alanlarını yönetmemizi sağlar").font(.title)
            }.padding().background(Color.yellow.cornerRadius(20)).padding()
            
            
            Text("Layout priority değeri kullanıldı")
            VStack(alignment:.leading, spacing:10) {
                HStack {
                    Image("manzara").resizable().frame(width:100,height:100).mask(Circle())
                    Text("Güzel manzara").font(.largeTitle)
                }
                
                Text("Layout öncelik değeri, dağıtılacak olan boşluk alanlarını yönetmemizi sağlar").font(.title)
            }.padding().background(Color.yellow.cornerRadius(20)).padding().layoutPriority(3)
            
            
            
        }
    }
}

struct LayoutPriority_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriority_Ornek1()
    }
}
