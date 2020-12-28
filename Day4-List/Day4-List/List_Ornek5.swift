//
//  List_Ornek5.swift
//  Day4-List
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct List_Ornek5: View {
    @State var veriler = ["Silmek için sola sürükleyin","SwiftUI kodlamayı öğren","Marke alışverişi","Yemek pişir","Dans kursuna kaydol","Sinema biletlerini al","Kask fiyatlarını araştır","Evi temizle","Arabayı tamir et"]
    var body: some View {
        NavigationView {
            List {
                ForEach(veriler, id:\.self) { veri in
                    Text(veri).font(.system(size: 20)).padding()
                }.onMove(perform: satirHaraket)
            }.navigationTitle(Text("Yapılacaklar"))
            .navigationBarItems(trailing: EditButton())
        }.accentColor(.green)
    }
    
    func satirHaraket(nereden indexler:IndexSet, nereye hedefIndex: Int) {
        if let ilk = indexler.first {
            veriler.insert(veriler.remove(at: ilk), at: ilk < hedefIndex ? hedefIndex-1: hedefIndex )
        }
    }
    
}

struct List_Ornek5_Previews: PreviewProvider {
    static var previews: some View {
        List_Ornek5()
    }
}
