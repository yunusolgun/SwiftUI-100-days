//
//  Form_Ornek2.swift
//  Day3-Form
//
//  Created by yunus olgun on 27.12.2020.
//

import SwiftUI

struct Form_Ornek2: View {
    var body: some View {
        Form {
            Section(header: Text("Section header alanı")) {
                Text("Section headerin içine sadece text değil istediğiniz viewleri ekleyebilirsiniz")
                Text("Header alanı varsayılan halde fontu biraz küçük ve gri olarak oluşturulur")
            }
            
            
            Section(header: GoruntuTextSection(metin: "Kişi bilgileri", goruntuAdi: "person.2.square.stack.fill")) {
                Text("Bu örnekte header alanına metin ve görüntünün eklenebildiğini görebilirsiniz.")
            }
            
            Section(footer: Text("Ödeminiz Gereken Miktar:23400TL")) {
                Text("Böylece header ve footer alanlarını ekleyebilirsiniz artık.")
            }
            
        }
    }
}


struct GoruntuTextSection: View {
    var metin: String
    var goruntuAdi: String
    var body: some View {
        HStack {
            Image(systemName: goruntuAdi).padding(.trailing)
            Text(metin)
        }.padding().font(.title).foregroundColor(Color.purple)
    }
}

struct Form_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Form_Ornek2()
    }
}
