//
//  DatePicker_Ornek5.swift
//  Day2-DatePicker
//
//  Created by yunus olgun on 27.12.2020.
//

import SwiftUI

struct DatePicker_Ornek5: View {
    @State private var tarih=Date()
    
    var gelecek30gun : ClosedRange<Date> {
        let bugun = Calendar.current.date(byAdding: .minute, value: -1, to: Date())!
        let gelecek = Calendar.current.date(byAdding: .day, value: 30, to: Date())!
        return bugun...gelecek
    }
    
    var body: some View {
        VStack(spacing:20) {
            Text("DatePicker örnek - 5").font(.largeTitle)
            Text("Min ve Maks tarih sınır aralığı").foregroundColor(.gray)
            Text("1 ay içindeki istediğiniz teslimat tarihini seçebilirsiniz").bold().padding().frame(maxWidth:.infinity).font(.title)
            
            
            DatePicker("",selection:$tarih, in: gelecek30gun,displayedComponents:.date).background(RoundedRectangle(cornerRadius: 10).foregroundColor(.yellow)).shadow(radius: 20,x:0,y:25).labelsHidden()
            
        }
    }
}

struct DatePicker_Ornek5_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Ornek5()
    }
}
