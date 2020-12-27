//
//  Form_Ornek4.swift
//  Day3-Form
//
//  Created by yunus olgun on 27.12.2020.
//

import SwiftUI

struct Form_Ornek4: View {
    var body: some View {
        Form {
            Section(header: Text("Form örnek-4").font(.title).foregroundColor(.white).bold()) {
                Text("List row background").font(.title).foregroundColor(.gray)
                Text("Burada da görebileceğiniz gibi görüntüler biraz farklı duruyor.")
                Text("Görüntü aslında birazdan 2.sectiona uygulanacak")
            }
            
            Section(header: Text("Görüntüler").font(.title).foregroundColor(.white)) {
                Text("Alttaki satırda olduğu gibi eğer arka planı satıra uygularsanız daha güzel görünebilir. Yani arkaplan ataması tek bir satıra uygulanınca iyi görülebilir. Ama eğer bunu bir sectiona uygularsanız o arka plan görüntüsünü tüm satırlara ayrı ayrı uygular. Amacınıza uygun olanı seçin")
                
                Text("Arkaplan görüntüsü sadece bu satıra uygulandı ama arkaplan görüntüsü sınırlarını aştı ve tüm her yere yayıldı. Ayrıca altındaki her satır bu satırın arkasında kalacağı için görüntülenemeyecek").listRowBackground(Image("arkaplan")).blur(radius: 0.8).foregroundColor(.white)
                
                Text("bu text görünmeyecek")
            }
            
        }
    }
}



struct Form_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        Form_Ornek4()
    }
}
