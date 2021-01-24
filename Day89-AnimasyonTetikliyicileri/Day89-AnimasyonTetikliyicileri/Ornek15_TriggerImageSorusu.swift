//
//  Ornek15_TriggerImageSorusu.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek15_TriggerImageSorusu: View {
    @State private var expanded = true
    
    var body: some View {
        
        GeometryReader { gr in
            VStack {
                Text("Ölü Deniz")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.top, 40)
                    .padding(.leading, 30)
                    .animation(.easeOut)
                
                Image("oludeniz").resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(20)
                    .padding(self.expanded ? 20: 0)
                    .frame(width: gr.size.width, height: self.expanded ? 300 : 600)
                    .animation(.easeOut)
                
                Button(action: {self.expanded.toggle()}, label: {
                    Image(systemName: "chevron.up")
                        .rotationEffect(.degrees(self.expanded ? 180 : 0))
                }).animation(.easeOut)
                
                Text("""
                    Ölüdeniz, Muğla ilinin Fethiye ilçesine bağlı bir mahalledir. Ölüdeniz kumsalı yüzde seksen iki oyla 2006 yılında Dünya'nın en güzel kumsalı seçilmiştir[1].

                    Belde, turizm açısından oldukça gelişmiştir. Likyalılarda ışık ve güneş diyarı, Ortaçağ'da "Uzak Diyar" olarak tanınır, Anadolu'nun güneybatısında yer alan Teke Yarımadası'da bulunur. Türkiye'de bulunan deniz kulağı (lagün) oluşumlarından biridir.

                    Ölüdeniz, adı gibi durgun bir göl niteliğindedir. En fırtınalı günlerde Belceğiz kıyıları dalgalarla boğuşurken, Ölüdeniz'de sadece çırpıntılar meydana gelir.

                    Ancak durgun gibi gözüken Ölüdeniz, gözle görünmeyen üç nedenle kendini hemen hemen her gün yenilemektedir. Bunlardan ilki, Ölüdeniz'de mevcut yoğun kaynak suyu çıkışları, dipte içeriden açıkdenize doğru bir akıntı yaratmaktadır. İkincisi, bu kaynak sularının yarattığı tuz farkından dolayı açıkdenizden içeriye ve dışarıya devamlı bir sirkülasyon oluşmasıdır. Üçüncüsü ise gel-git etkisi ile iki-üç günde bir deniz ortalama yarım metre yükselir ve alçalır. Bu da büyük miktarda deniz suyu giriş ve çıkışı sağlamaktadı
                    """).padding(.horizontal, 15)
                    .animation(.easeOut)
                
            }
        }.font(.headline)
        
    }
}

struct Ornek15_TriggerImageSorusu_Previews: PreviewProvider {
    static var previews: some View {
        Ornek15_TriggerImageSorusu()
    }
}
