//
//  Hidden_Ornek1.swift
//  Day37-Hidden
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct TuruncuDikdortgen: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20).foregroundColor(.orange)
    }
}

struct Hidden_Ornek1: View {
    @State private var gosterView = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Hidden Örnek - 1").font(.largeTitle)
            Text("Hidden meotduyla viewleri gizleyebilirsiniz - gösterebilirsiniz").font(.title).foregroundColor(.gray)
            
            if gosterView {
                TuruncuDikdortgen().overlay(Text("Gizli bir view'i görüyorsunuz"))
            } else {
                TuruncuDikdortgen().hidden().overlay(Text("Şekil görünmüyor hala yerini koruyumaya devam ediyor, eğer aksi olsaydı bu cümleleri okuyamazdınız").foregroundColor(.red))
            }
            
            TuruncuDikdortgen()
            TuruncuDikdortgen()
            
            Button(action: {
                self.gosterView.toggle()
            }) {
                Text("View Gizle/Göster")
            }
        }
    }
}

struct Hidden_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Hidden_Ornek1()
    }
}
