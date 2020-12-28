//
//  List_Ornek3.swift
//  Day4-List
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct List_Ornek3: View {
    var yazarlar = ["Özel Satırlar","Fyodor Dostoyevski","Orhan Pamuk","Lev Tolstoy","Nikolay Gogol","Franz Kafka","Anton Çehov","Ahmet Hamdi Tanpınar"]
    var body: some View {
        List(yazarlar,id:\.self) {yazar in
            OzelSatir(icerik: yazar)
        }
    }
}


struct OzelSatir: View {
    var icerik: String
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
            Text(icerik)
            Spacer()
        }.foregroundColor(icerik=="Özel Satırlar" ? .green: .primary).font(.title).padding([.top,.bottom],15)
    }
}

struct List_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        List_Ornek3()
    }
}
