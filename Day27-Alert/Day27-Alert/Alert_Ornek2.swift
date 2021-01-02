//
//  Alert_Ornek2.swift
//  Day27-Alert
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Alert_Ornek2: View {
    
    struct AlertVeri: Identifiable {
        var id = UUID()
        let baslik: String
        let mesaj: String
    }
    
    @State private var alertVeri: AlertVeri? = nil
    @State private var txtAdi = ""
    @State private var txtSonuc = ""
    
    let s1 = Int.random(in: 1...5)
    let s2 = Int.random(in: 1...5)
    
    var body: some View {
        VStack(spacing:10) {
            HStack {
                Text("Adınız:")
                TextField("Adınızı girin",text: $txtAdi)
            }
            
            HStack {
                Spacer()
                Text(String(s1))
                Image(systemName: "plus")
                Text(String(s2))
                Image(systemName: "equal")
                TextField("Sonuç", text: $txtSonuc)
                Spacer()
            }.font(.title)
            
            Button("Giriş yap") {
                if Int(self.txtSonuc) == (self.s1 + self.s2) {
                    self.alertVeri = AlertVeri(baslik: "Süper", mesaj: "Merhaba \(self.txtAdi) başarıyla giriş yaptınız.")
                } else {
                    self.alertVeri = AlertVeri(baslik: "Üzgünüm", mesaj: "Merhaba \(self.txtAdi) yanlış giriş yaptınız.")
                }
            }
            
        }.padding().alert(item: $alertVeri) { alertDegeri in
            Alert(title: Text(alertDegeri.baslik), message: Text(alertDegeri.mesaj))
        }
    }
}

struct Alert_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Alert_Ornek2()
    }
}
