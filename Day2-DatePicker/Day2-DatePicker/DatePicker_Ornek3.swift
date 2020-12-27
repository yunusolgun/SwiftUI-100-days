//
//  DatePicker_Ornek3.swift
//  Day2-DatePicker
//
//  Created by yunus olgun on 27.12.2020.
//

import SwiftUI

struct DatePicker_Ornek3: View {
    @State private var saat=Date()
    @State private var tarihSaat=Date()
    var body: some View {
        VStack(spacing:20) {
            Text("DatePicker Örnek-3").font(.largeTitle)
            Text("DatePicker Component").font(.title).foregroundColor(.gray)
            Text("Datepicker'in Tarih ve Saat olmak üzere 2 ayrı yapısı var.").bold().frame(maxWidth:.infinity).padding().background(Color.yellow)
            
            DatePicker("", selection: $saat, displayedComponents: .hourAndMinute).labelsHidden()
            
            Text("Tarih ve Zaman birlikte").bold().frame(maxWidth:.infinity).padding().background(Color.yellow)
            
            DatePicker("", selection: $tarihSaat, displayedComponents: [.date, .hourAndMinute]).labelsHidden()
        }
    }
}

struct DatePicker_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Ornek3()
    }
}
