//
//  TabView_Ornek1.swift
//  TabView
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TabView_Ornek1: View {
    var body: some View {
        
        TabView {
            
            //1.SEKME
            VStack(spacing:20) {
                Text("TabView Örnek -1").font(.largeTitle)
                Text("TabView ler her bir sekmede farklı viewleri barındırabilir.").frame(maxWidth:.infinity).padding().background(Color.yellow).font(.title)
                Image(systemName: "star.square.fill").font(.largeTitle)
                
                
            }.tabItem { Text("1.sekme") }
            
            //2.SEKME
            Text("Burası 2.sekmenin alanı").tabItem { Text("2.sekme") }
            
            
        }
    }
}

struct TabView_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Ornek1()
    }
}
