//
//  TextView_Ornek1.swift
//  Day12-Text
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextView_Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Text Örnek-1").font(.largeTitle)
            Text("Wrapping").font(.title).foregroundColor(.gray)
            
            Text("Text View read-only metinler oluşturmak için kullanılır. Eğer değiştirmezseniz varsayılan ayarlarda tüm içeriğini görüntüleyecek şekilde -belirli bir yere kadar- boyutlarını ayarlar. Eğer bu boyutları satır bazlı sınırlandırmak isterseniz lineLimit fonksiyonunu kullanmalısınız. Eğer yazının içeriğini belirtilen 'limit satır sayısını' aşıyorsa geri kalanı ... şeklinde görüntülenir").frame(maxWidth:.infinity).background(Color.blue).foregroundColor(.white).font(.title).fixedSize(horizontal: false, vertical: true)
            
            Text("Bugün olula gidip gitmeyeceğime karar vermedim henüz").font(.title).padding(.horizontal).lineLimit(1)
        }
    }
}

struct TextView_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        TextView_Ornek1()
    }
}
