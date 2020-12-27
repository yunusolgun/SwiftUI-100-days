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
            Text("Text Birleştirme").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
            Text("Butonlara birden fazla text nesnesini ekliyebilirsiniz. Böyle bir durumda eklenen text nesneleri varsayılan halde (siz eklemediğiniz halde) HStack yapsısında gösterilir.").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding().frame(maxWidth:.infinity).background(Color.orange)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Yeni kullanıcı").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("(Kayıt Ol)")
            })
            
            Text("VStack Kullanarak").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).frame(maxWidth:.infinity).padding().background(Color.purple).foregroundColor(.white)
            
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Parolanı mı Unuttun?").bold()
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
