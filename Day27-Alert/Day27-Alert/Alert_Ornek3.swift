//
//  Alert_Ornek3.swift
//  Day27-Alert
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Alert_Ornek3: View {
    
    @State private var gorunsunAlert = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Alert Örnek - 3").font(.largeTitle)
            Text("Alert Buton seçenekleri").font(.title).foregroundColor(.gray)
            
            Button("Alert tipleri") {
                self.gorunsunAlert = true
            }
            
        }.alert(isPresented: $gorunsunAlert) {
            
            //Alert(title: Text("Oturumunuz sonlandırıldı"))
            
            //Alert(title: Text("Başlık"), message: Text("Alert mesajı"), dismissButton: .cancel())
            
            //Alert(title: Text("Onay"), message: Text("Devam etmek istiyor musunuz?"), primaryButton: .default(Text("Devam et"),action: {}), secondaryButton: .cancel(Text("İptal")))
            
            Alert(title: Text("Silme işlmei"), message: Text("Hesabınızı silmek istediğinize emin misiniz?"), primaryButton: .destructive(Text("Sil"),action: {}), secondaryButton: .cancel(Text("İptal")))
            
        }
    }
}

struct Alert_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Alert_Ornek3()
    }
}
