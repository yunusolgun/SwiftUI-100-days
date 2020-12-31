//
//  TextView_Ornek3.swift
//  Day12-Text
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextView_Ornek3: View {
    
    @State private var boslukMiktari = 10.0
    
    var body: some View {
        
        VStack(spacing:20) {
            Text("Text Örnek - 3").font(.largeTitle)
            Slider(value: $boslukMiktari, in: 1...30)
            Text("linespacing değeri birden fazla satırdan oluşan text nesnelerinin satırları arasında bırakılacak olan boşluğu ayarlar").font(.title).background(Color.black).foregroundColor(.white).lineSpacing(CGFloat(boslukMiktari))
            
            Text("SwiftUI ile uygulamaların görünümünü oluşturmak daha kolay hale gelebilir").font(.title).foregroundColor(.white).frame(maxWidth:.infinity).background(Color.purple).multilineTextAlignment(.trailing)
        }
        
        
    }
}

struct TextView_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        TextView_Ornek3()
    }
}
