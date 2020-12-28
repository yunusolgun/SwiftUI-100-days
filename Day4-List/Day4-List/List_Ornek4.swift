//
//  List_Ornek4.swift
//  Day4-List
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct List_Ornek4: View {
    @State var veriler = ["Silmek için sola sürükleyin","SwiftUI kodlamayı öğren","Marke alışverişi","Yemek pişir","Dans kursuna kaydol","Sinema biletlerini al","Kask fiyatlarını araştır","Evi temizle","Arabayı tamir et"]
    var body: some View {
        List {
            Section(header: Text("Yapılacaklar listesi").padding()) {
                ForEach(veriler,id:\.self) { veri in
                    Text(veri).font(.system(size: 24)).padding()
                }.onDelete(perform: veriSil)
            }
        }
    }
    
    func veriSil(at indexler: IndexSet) {
        if let first = indexler.first {
            veriler.remove(at: first)
        }
    }
    
}

struct List_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        List_Ornek4()
    }
}
