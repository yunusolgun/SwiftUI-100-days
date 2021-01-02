//
//  Ornek1.swift
//  Day32-StatusBarGizleme
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var acik = true
    var body: some View {
        ZStack {
            Color.black
            VStack(spacing:20){
                Text("Status Bar Gizleme").font(.largeTitle)
                Text("Giriş").foregroundColor(.gray)
                Text("Herhangi bir view için status barı gizlemek veya göstermek isteyebilirsiniz. Bunu yapabilmek için statusBar metodunu kullanmamız gerekiyor").frame(maxWidth:.infinity).padding().background(Color.pink).foregroundColor(.black)
                Toggle(isOn: $acik) {
                    Text("Status Bar ") + Text(acik ? "Göster": "Gizle").bold().foregroundColor(.red)
                    Image(systemName: acik ? "eye": "eye.slash")
                }.padding()
                
            }.foregroundColor(.white).font(.title).statusBar(hidden: acik)
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
