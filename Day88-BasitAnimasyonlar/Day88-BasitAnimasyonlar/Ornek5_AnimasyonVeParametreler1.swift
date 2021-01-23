//
//  Ornek5_AnimasyonVeParametreler1.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek5_AnimasyonVeParametreler1: View {
    @State private var show = false
    @State private var rotation = false
    
    var body: some View {
        VStack(spacing:20){
            Text("Animasyon ve Parametreler").font(.largeTitle)
            Text("Opacity ve Rotation").foregroundColor(.gray)
            
            Button("Gizle/Göster") {
                self.show.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20).foregroundColor(.orange)
                .frame(width:200, height: 200)
                .padding()
                .opacity(show ? 1 : 0)
                .animation(.easeInOut)
            
            Spacer()
            
            Button("Döndür") {
                self.rotation.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20).foregroundColor(.blue)
                .frame(width:200, height: 200)
                .padding()
                .overlay(Image(systemName: "arrow.right").foregroundColor(.white))
                .rotationEffect(Angle.degrees(rotation ? 250 : 0))
                .animation(.easeInOut)
            
        }.font(.title)
    }
}

struct Ornek5_AnimasyonVeParametreler1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek5_AnimasyonVeParametreler1()
    }
}
