//
//  Ornek1.swift
//  Day61-Mask
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Mask Örnek - 1").font(.largeTitle)
            
            HStack {
                VStack {
                    Text("Görüntü")
                    Image("manzara").resizable().frame(width:130, height:130)
                }
                
                Image(systemName: "plus").padding(.top,70)
                
                VStack {
                    Text("Maske")
                    RoundedRectangle(cornerRadius: 20).frame(width:130, height:130)
                }
                
                Image(systemName: "equal").padding(.top,70)
                
                VStack {
                    Text("Sonuç")
                    Image("manzara").resizable().frame(width:130, height:130).mask(RoundedRectangle(cornerRadius: 20))
                }
                
                
                VStack {
                    Text("CornerRadius metodu")
                    Image("manzara").resizable().frame(width:130, height:130).cornerRadius(20)
                }
                
            }.padding(.bottom,40)
            
            
            
            Text("Capsule Maske")
            Image("manzara").mask(Capsule())
            
            Text("Dairesel Maske")
            Image("manzara").mask(Circle())
            
            Text("Text Maske")
            Image("manzara").resizable().scaledToFit().frame(width:500).mask(Text("manzara fotoğrafı").fontWeight(.bold).font(.system(size: 100)))
           
            
        }.font(.title)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
