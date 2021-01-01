//
//  Color_Ornek2.swift
//  Day16-Color
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Color_Ornek2: View {
    var body: some View {
        
        ZStack {
            Color("ColorBackground").edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing:20) {
                Text("Color").font(.largeTitle)
                Text("Background olarak kullanma").font(.title).foregroundColor(.gray)
                
                Divider()
                
                Text("ZStack kullanarak Color View'i arka plan olarak kullanabilirsiniz").frame(maxWidth:.infinity).padding().font(.title).foregroundColor(.white).background(Color.green)
                
                Text("Arka plan dark mode").padding(.top,150)
                
            }
            
        }
        
    }
}

struct Color_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Color_Ornek2()
    }
}
