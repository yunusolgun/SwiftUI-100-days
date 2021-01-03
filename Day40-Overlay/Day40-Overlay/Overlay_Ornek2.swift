//
//  Overlay_Ornek2.swift
//  Day40-Overlay
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Overlay_Ornek2: View {
    var body: some View {
        
        
        ZStack(alignment: .center){
            Color.blue
            
            VStack(spacing:20) {
                Text("Overlay Örnek -2").font(.largeTitle)
                Text("Overlay vs ZStack").font(.title).foregroundColor(.gray)
                
                HStack {
                    Image("Overlay")
                    Image("ZStack")
                }
                Text("Benzer layout tasarımlarının ZStack ve Overlay metodunu kullanarak yapabildiğinizi gördünüz. Bundan sonra istediğiniz yöntemi seçebilirsiniz.").frame(maxWidth:.infinity).padding().background(Color.orange)
                
                RoundedRectangle(cornerRadius: 5).frame(width:300, height:200).overlay(
                    Circle().foregroundColor(.red).frame(width: 200, height: 120)
                ).overlay(
                    Text("Japonya bayrağı").font(.headline).foregroundColor(.black).padding(.bottom,10), alignment: .bottom
                )
                
            }
            
            
        }.edgesIgnoringSafeArea(.vertical).foregroundColor(.white).font(.title)
        
        
        
    }
}

struct Overlay_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Overlay_Ornek2()
    }
}
