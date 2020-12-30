//
//  Slider_Ornek1.swift
//  Day9-Slinder
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct Slider_Ornek1: View {
    @State private var sliderDegeri = 0.3
    @State private var yas = 10.0
    
    let yasFormatla : NumberFormatter = {
        let nFormatter = NumberFormatter()
        nFormatter.numberStyle = .spellOut
        return nFormatter
    }()
    
    var body: some View {
        VStack(spacing:20) {
            Text("Slider Örnek -1").font(.largeTitle)
            Text("Slider'in varsayılan değer aralığı 0 ve 1 arasındadır").foregroundColor(.red)
            
            Slider(value: $sliderDegeri).padding(.horizontal)
            
            Text("Sectiğiniz değer: ") + Text("\(sliderDegeri)").foregroundColor(.orange).bold()
            
            Text("Kaç yaşındasın sen?").font(.title).foregroundColor(.gray)
            
            Slider(value: $yas, in: 1...100, step:1).padding(.horizontal)
            
            Text("Yaşınız:") + Text("\(yasFormatla.string(from: NSNumber(value:yas))!)").foregroundColor(.red).bold()
           
            
        }
    }
}

struct Slider_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Ornek1()
    }
}
