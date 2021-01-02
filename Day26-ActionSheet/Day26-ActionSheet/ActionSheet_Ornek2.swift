//
//  ActionSheet_Ornek2.swift
//  Day26-ActionSheet
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct ActionSheet_Ornek2: View {
    
    struct ActionSheetVeri: Identifiable {
        var id = UUID()
        let baslik: String
        let mesaj: String
    }
    
    @State private var veriler: ActionSheetVeri? = nil
    
    var body: some View {
        VStack(spacing:20) {
            Text("Action Sheet Örnek - 2").font(.largeTitle)
            
            Button("Action Sheet Veri Aktaramı") {
                self.veriler = ActionSheetVeri(baslik: "Seçenekler", mesaj: "Lütfen birini seçin")
            }.actionSheet(item: $veriler) { mesaj in
                ActionSheet(title: Text(mesaj.baslik), message: Text(mesaj.mesaj))
            }
            
        }
    }
}

struct ActionSheet_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_Ornek2()
    }
}
