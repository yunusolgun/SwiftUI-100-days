//
//  DatePicker_Ornek4.swift
//  Day2-DatePicker
//
//  Created by yunus olgun on 27.12.2020.
//

import SwiftUI

struct DatePicker_Ornek4: View {
    @State private var tarih=Date()
    let anaRenk = Color("AcikMavi")
    let dun = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    let yarin = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
    var body: some View {
        VStack(spacing:20) {
            Text("DatePicker Örnek-4").font(.largeTitle)
            Text("Tarih veya zaman seçimi").foregroundColor(.gray).bold()
            Text("DatePicker için maksimum bir tarih veya zaman belirliyerek, kullanıcının bu tarihten-zamandan öncesine gidememesini sağlıyabilirsiniz.").frame(maxWidth:.infinity).padding().foregroundColor(.white).background(anaRenk)
            Image("bebek").resizable().aspectRatio(contentMode: .fit)
            Text("Doğum tarihi ve saati")
            DatePicker("", selection: $tarih, in: dun...yarin,displayedComponents: [.date,.hourAndMinute]).background(RoundedRectangle(cornerRadius: 20).stroke(anaRenk,lineWidth: 3)).padding().labelsHidden()
            
        }
    }
}

struct DatePicker_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_Ornek4()
    }
}
