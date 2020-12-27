//
//  Form_Ornek3.swift
//  Day3-Form
//
//  Created by yunus olgun on 27.12.2020.
//

import SwiftUI

struct Form_Ornek3: View {
    var body: some View {
        Form {
            Section(header: Text("Form").font(.title)) {
                Text("List Row background").foregroundColor(.gray).bold()
                Text("Formlara ve listelere \"listRowBackground(view:)\" fonksiyonunu kullanakara arkaplanlarına bir view ataması yapabilirsiniz").bold().fixedSize(horizontal: false, vertical: true)
                Text("Bu fonksiyonu tek bir satir için çalıştırabilirsiniz").foregroundColor(.white).listRowBackground(Color.black)
            }
            
            
            Section(header: Text("Tüm Sectiona arka plan").font(.title2).foregroundColor(.red)) {
                Text("Tüm section arka planına bir view veya renk aktarabilirsiniz")
                Image(systemName: "smiley.fill").frame(maxWidth:.infinity).font(.largeTitle)
                Text("Section alanına uygulanan bir arka plan header alanını etkilemez")
            }.listRowBackground(Color.green).foregroundColor(.white)
            
        }
    }
}

struct Form_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Form_Ornek3()
    }
}
