//
//  Overlay_Ornek1.swift
//  Day40-Overlay
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Overlay_Ornek1: View {
    var body: some View {
        
        Color.blue.overlay(
            
            
            VStack(spacing:20) {
                Text("Overlay Örnek - 1").font(.largeTitle)
                
                Text("Overlay arka plan atama").foregroundColor(.gray)
                
                Image("Overlay")
                
                Text("Bu örnekte, VStack yapısını Color View'in önünde görüyoruz. Ekrandaki arka plana renk atamak için kullanabilceğiniz yöntemlerden biri olarak bunu da düşünebilirsiniz").frame(maxWidth:.infinity).padding().background(Color.orange)
            }, alignment: .bottom
            
            
        ).edgesIgnoringSafeArea(.vertical).foregroundColor(.white).font(.title)

    }
}

struct Overlay_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Overlay_Ornek1()
    }
}
