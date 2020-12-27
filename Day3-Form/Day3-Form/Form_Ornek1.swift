//
//  Form_Ornek1.swift
//  Day3-Form
//
//  Created by yunus olgun on 27.12.2020.
//

import SwiftUI

struct Form_Ornek1: View {
    var body: some View {
        Form {
            Section {
                Text("BU BİR FORM!").font(.title).foregroundColor(.red)
                Text("Buraya istediğiniz içeriği ekleyebilirsiniz")
                Text("Formadaki hücreler, içeriğin boyutunu en uygun şekilde kapsayacak biçimde boyutlarını ayarlar. Her zaman sağa ve sola tamamen büyümez.")
                Text("Bunların basitçe bir view içindeki view olduğunu unutmayın.")
            }
            
            Section {
                Text("SINIRLAMALAR").font(.title).foregroundColor(.red)
                Text("Oluşturulan hücrelerin etrafındaki boşluklar oluşur. Bunu görmek için alttaki alana bakın")
                Color.pink
            }
        }
    }
}

struct Form_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Form_Ornek1()
    }
}
