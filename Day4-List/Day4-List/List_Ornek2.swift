//
//  List_Ornek2.swift
//  Day4-List
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct List_Ornek2: View {
    var gosterilecekVeriler = ["Gruplama Özelliği","Basit bir liste olusturulım","helstar","megadeth","kick the chair", "Eğer content çok büyük olursa da o satır otomatik olarak onu sarmalayacak şekilde büyür"]
    var body: some View {
        VStack(spacing:20) {

            List(gosterilecekVeriler,id:\.self) { strVeri in
                Text(strVeri)
            }
            
            List(gosterilecekVeriler,id:\.self) {strVeri in
                Text(strVeri).font(strVeri=="Gruplama Özelliği" ? .largeTitle:.body)
                Spacer()
                Image(systemName: strVeri=="helstar" ? "circle.fill":"circle")
            }.listStyle(GroupedListStyle())
            
            
            
        }
    }
}

struct List_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        List_Ornek2()
    }
}
