//
//  Popover_Ornek2.swift
//  Day30-Popover
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Popover_Ornek2: View {
    @State private var gorunsunPopover = false
    @State private var txtKullaniciAdi = ""
    
    var body: some View {
        VStack(spacing:20) {
            Text("Popover Örnek - 2").font(.largeTitle)
            Text("Popover arka plana renk atama").font(.title).foregroundColor(.gray)
            
            Text("Popover alanına arka plan rengi atayabilirsiniz. Fakat popover ile birlikte gelen okun rengi değişmez. Buna dikkat etmelisiniz").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white)
            
            HStack {
                Text("Kullanıcı Adınız: ")
                TextField("Kullanıcı adınızı girin...", text: $txtKullaniciAdi)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    if self.txtKullaniciAdi.count < 5 {
                        self.gorunsunPopover = true
                    }
                }, label: {
                    Image(systemName: "exclamationmark.triangle.fill").font(.title).foregroundColor(.yellow)
                }).popover(isPresented: $gorunsunPopover, content: {
                    ZStack {
                        Color.orange
                        Text("Kullanıcı adınız en az 5 karakterden oluşmalı").foregroundColor(.white).font(.title).frame(height: 200).padding()
                    }
                })
                Spacer()
                
            }.padding()
            
        }.padding(.top)
    }
}

struct Popover_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Popover_Ornek2()
    }
}
