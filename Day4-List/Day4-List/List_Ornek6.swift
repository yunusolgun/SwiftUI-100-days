//
//  List_Ornek6.swift
//  Day4-List
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct  Yapilacak : Identifiable {
    let id = UUID()
    var yapilacakIs = ""
    var zaman = ""
    var girintili = false
}

struct List_Ornek6: View {
    @State private var eklenecekIsAdi = ""
    @State var veriler = [
    Yapilacak(yapilacakIs: "Kodlama Yap", zaman: "Bugün"),
    Yapilacak(yapilacakIs: "Evi Temizle", zaman: "Bugün",girintili: true),
    Yapilacak(yapilacakIs: "Spora Git", zaman: "Yarın"),
    Yapilacak(yapilacakIs: "Havuza Kaydol", zaman: "Gelecek Hafta"),
    Yapilacak(yapilacakIs: "Tatil Araştır", zaman: "Gelecek Hafta"),
    Yapilacak(yapilacakIs: "Ödevi Yap", zaman: "2 Hafta Sonra"),
    Yapilacak(yapilacakIs: "Bulaşıkları Yıka", zaman: "Yarın"),
    Yapilacak(yapilacakIs: "Motosikleti Bakıma Götür", zaman: "Bugün",girintili: true),
    
    ]
    
    
    
    
    var body: some View {
    
        
        List {
            
            
            Section(header:
                VStack {
                    Text("Yapılacaklar").font(.title)
                    HStack {
                        TextField("Yeni Aktivite Ekle",text: $eklenecekIsAdi).textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action: {
                            self.veriler.append(Yapilacak(yapilacakIs: self.eklenecekIsAdi))
                            self.eklenecekIsAdi = ""
                        })//Buton Bitişi
                        {
                         Image(systemName: "plus.circle.fill")
                        }//Buton bitişi
                    } // HStack Bitişi
                }//VStack bitişi
                    .padding(EdgeInsets(top: 50, leading: 16, bottom: 16, trailing: 16))
            )//Section Bitişi
            {
                
                ForEach(veriler) { veri in
                    
                    Text(veri.yapilacakIs).font(.system(size: 24)).foregroundColor(self.renkGetir(zaman: veri.zaman))
                        .listRowBackground(veri.zaman == "Bugün" ? Color.green : Color.clear)
                    .padding()
                        .listRowInsets(.init(top: 0, leading: veri.girintili ? 60 : 20, bottom: 0, trailing: 0))
                    
                }
            }
            
            
            
        }
        
        
        
        
    }
    
    func renkGetir(zaman : String) -> Color {
        zaman == "Bugün" ? Color.red : Color.primary
    }
}

struct List_Ornek6_Previews: PreviewProvider {
    static var previews: some View {
        List_Ornek6()
    }
}
