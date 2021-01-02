//
//  Sheet_Ornek1.swift
//  Day29-Sheet
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Sheet_Ornek1: View {
    
    @State private var gorunsunSheet = false
    
    var body: some View {
        Button("Ekran Göster") {
            self.gorunsunSheet = true
        }.sheet(isPresented: $gorunsunSheet) {
            YeniEkran(baslik: "Sheet", altBaslik: "Bool değişkeni değişti ve ekran gösterildi")
        }
    }
}

struct YeniEkran: View {
    @Environment(\.presentationMode) var presentation
    
    let baslik: String
    let altBaslik: String
    
    var body: some View {
        VStack(spacing:20) {
            Text(baslik).font(.largeTitle)
            Text(altBaslik).font(.title).foregroundColor(.gray)
            Spacer()
            Button("Geri Dön") {
                self.presentation.wrappedValue.dismiss()
            }.accentColor(.red)
            .font(.system(size: 25, weight: .bold))
        }
    }
}

struct Sheet_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_Ornek1()
    }
}
