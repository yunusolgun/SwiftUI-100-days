//
//  Form_Ornek5.swift
//  Day3-Form
//
//  Created by yunus olgun on 27.12.2020.
//

import SwiftUI

struct Form_Ornek5: View {
    var body: some View {
        Form {
            Section(header: Text("Form Örnek-5").font(.title)) {
                Text("List Row Inset").font(.title).foregroundColor(.gray)
                Text("Bu rengi kullanarak varsayılan boşlukların nereden olduğunu görebilirsiniz")
                Color.pink
                Text("List Row Inset ile bu boşlukları düzenleyebilirsiniz")
                Color.blue.listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            
            Section(header: Text("Row Inset Kullanımı").font(.title3)) {
                Text("Daha fazla içeriye boşluk vermek isteyebiliriz")
                Text("Boşluk seviye-1").listRowInsets(.init(top: 0, leading: 50, bottom: 0, trailing: 0))
                Text("Boşluk seviye-2").listRowInsets(.init(top: 0, leading: 100, bottom: 0, trailing: 0))
                Text("Dikey hizalamada kullanabilirsiniz")
                Text("Üstte görünsün").listRowInsets(.init(top: -20, leading: 50, bottom: 0, trailing: 0))
                Text("Altta görünsün").listRowInsets(.init(top: 0, leading: 50, bottom: -20, trailing: 0))
                
            }
            
            
        }
    }
}

struct Form_Ornek5_Previews: PreviewProvider {
    static var previews: some View {
        Form_Ornek5()
    }
}
