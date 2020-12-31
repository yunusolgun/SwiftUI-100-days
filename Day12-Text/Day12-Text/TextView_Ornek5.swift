//
//  TextView_Ornek5.swift
//  Day12-Text
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextView_Ornek5: View {
    var body: some View {
        VStack(spacing:20) {
            Text("IOS programlama").underline() +
            Text(" SwiftUI").font(.largeTitle).fontWeight(.light).foregroundColor(.blue).underline() +
                Text(" Viewler").underline()
            
            //Baseline değiştirilecek
            Text("IOS programlama").underline() +
                Text(" SwiftUI").font(.largeTitle).fontWeight(.light).foregroundColor(.blue).underline().baselineOffset(-20) +
                Text(" Viewler").underline()
            
            
            Text("Bu yazı çok yüksek önceliğe sahip. İçeriğinin mutlaka kullanıcı tarafından görülmesi gerekiyor. Ayarlamalarını buna göre yap lütfen.").font(.title).foregroundColor(.white).frame(maxWidth:.infinity).padding().background(Color.green).layoutPriority(2)
            
            
            Text("Muhtemelen bu textin tamamı görünmeyecek. Çünkü herhangi bir öncelik değerine sahip değil.").font(.title).foregroundColor(.white).padding().frame(maxWidth:.infinity).background(Color.pink)
            
            Text("Bu metin, bir üstteki textin kesilmesini sağlıyacak. Çünkü ikinci en yüksek öncelik değerinde sahip. Böylece mbu metin tamamen gösterilirken üstteki metin kesilecek.").font(.title).foregroundColor(.white).frame(maxWidth:.infinity).padding().background(Color.orange).layoutPriority(1)
            
            Text("Avenir Next Regular").font(Font.custom("Avenir Next",size:26))
            Text("Gill Sans").font(Font.custom("Gill Sans", size: 20))
            
        }
    }
}

struct TextView_Ornek5_Previews: PreviewProvider {
    static var previews: some View {
        TextView_Ornek5()
    }
}
