//
//  FixedSize_Ornek2.swift
//  Day35-FixedSize
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct FixedSize_Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Fixed Size Örnek - 2").font(.largeTitle)
            Text("Text Kırpılmasını Engelleme").foregroundColor(.gray)
            
            Form {
                Section(header: Text("Form'da text").font(.largeTitle)) {
                    Text("Bazen uzun metinler girdiğimizde, bu metinlerin bir kısmı kırpılarak gösterilebilir. Böyle olunca sorun olur. Çünkü textin geri kalanını göremiyeceğiz.").listRowBackground(Color.pink).layoutPriority(2).fixedSize(horizontal: true, vertical: false)
                    
                    Text("Bazen uzun metinler girdiğimizde, bu metinlerin bir kısmı kırpılarak gösterilebilir. Böyle olunca sorun olur. Çünkü textin geri kalanını göremiyeceğiz.").listRowBackground(Color.green).fixedSize(horizontal: false, vertical: true)
                    
                    
                    
                }
            }
            
            
        }.font(.title)
    }
}

struct FixedSize_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        FixedSize_Ornek2()
    }
}
