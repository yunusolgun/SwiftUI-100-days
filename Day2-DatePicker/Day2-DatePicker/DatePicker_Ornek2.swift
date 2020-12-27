//
//  DatePicker_Ornek2.swift
//  Day2-DatePicker
//
//  Created by yunus olgun on 26.12.2020.
//

import SwiftUI

struct DatePicker_Ornek2: View {
    
    @State private var tarihVerisi = Date()
    
    var body: some View {
        VStack(spacing:20) {
            Text("DatePicker Örnek - 2").font(.largeTitle)
            Text("Başlık Ekleme").font(.title).foregroundColor(.gray)
            Text("DatePickerlara başlık ekleyerek tarih seçiminin amacını belirtebilirsiniz.").frame(maxWidth:.infinity).padding().background(Color.yellow)
            
            DatePicker("Teslimant gününüzü seçin", selection: $tarihVerisi, displayedComponents: .date)
            
            Text("Title konumunu manuel yöntemlerle değiştirebiliriz").frame(maxWidth:.infinity).padding().background(Color.yellow)
            
            
            Text("Teslimat saatinizi seçin").foregroundColor(.red).bold().underline()
            DatePicker("", selection: $tarihVerisi, displayedComponents: .hourAndMinute).labelsHidden()
            
        }
    }
}

struct DatePicker_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Ornek2()
    }
}
