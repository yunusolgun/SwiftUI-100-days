//
//  List_Ornek1.swift
//  Day4-List
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct List_Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("List").font(.largeTitle)
            Text("Static Data").font(.title).foregroundColor(.gray)
            Text("List View istediğiniz kadar statik view veya veri gösterebilirsiniz. Ekleyebileceğiniz verinin bir sınırı yok. Ekrana sığmasa bile Scroll özelliğiyle geri kalanını gösterir.").frame(maxWidth:.infinity).padding().font(.title).foregroundColor(.white).background(Color.orange)
            
            List {
                Text("1.Satır")
                Text("2.Satır")
                Text("3.Satır")
                Image("kisi").resizable().frame(width: 100, height: 100, alignment: .leading)
                Button("Buraya Tıkla") {
                    
                }.foregroundColor(.orange)
                
                HStack {
                    Spacer()
                    Text("Merkezde görünecek")
                    Spacer()
                }
                
            }
        }
    }
}

struct List_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        List_Ornek1()
    }
}
