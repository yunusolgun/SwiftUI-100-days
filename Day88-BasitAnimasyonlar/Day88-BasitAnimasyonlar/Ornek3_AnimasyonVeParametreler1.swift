//
//  Ornek3_AnimasyonVeParametreler1.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek3_AnimasyonVeParametreler1: View {
    @State private var colorChange = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon ve Parametreler").font(.largeTitle)
            Text("Animasyon Hue Rotation").foregroundColor(.gray)
            
            Text("Renk değişimini hueRotation metodunu kullanarak da yapabilirsiniz.").frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.blue)
            
            Image("manzara")
            
            HStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .padding()
                    .hueRotation(Angle.degrees(colorChange ? 160:0))
                    .animation(.easeInOut)
                
                Image("manzara").resizable().scaledToFit()
                    .hueRotation(Angle.degrees(colorChange ? 160:0))
                    .animation(.easeInOut)
            }
            
            Button("Color change") {
                self.colorChange.toggle()
            }
            
            
            
        }.font(.title)
    }
}

struct Ornek3_AnimasyonVeParametreler1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3_AnimasyonVeParametreler1()
    }
}
