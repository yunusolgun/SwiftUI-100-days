//
//  Button_Ornek2.swift
//  Day1-ButonOrnekleri
//
//  Created by yunus olgun on 26.12.2020.
//

import SwiftUI

struct Button_Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Button Örnek - 2").font(.largeTitle)
            Text("Text Birleştirme").font(.title).foregroundColor(.gray)
            Text("Butonlara birden fazla text nesnesini ekliyebilirsiniz. Böyle bir durumda eklenen text nesneleri varsayılan halde (siz eklemediğiniz halde) HStack yapsısında gösterilir.").font(.title).padding().frame(maxWidth:.infinity).background(Color.orange)
            
            Button(action: {}, label: {
                Text("Yeni kullanıcı").font(.title)
                Text("(Kayıt Ol)")
            })
            
            Text("VStack Kullanarak").font(.title).frame(maxWidth:.infinity).padding().background(Color.purple).foregroundColor(.white)
            
            VStack {
                Button(action: {}, label: {
                    Text("Parolanı mı Unuttun?").bold()
                })
                
                Button(action: {}, label: {
                    Text("Sıfırlamak İstiyorum").font(.footnote)
                })
                
            }.foregroundColor(.black)
        }
    }
}

struct Button_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Button_Ornek2()
    }
}
