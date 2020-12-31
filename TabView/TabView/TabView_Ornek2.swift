//
//  TabView_Ornek2.swift
//  TabView
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TabView_Ornek2: View {
    var body: some View {
        TabView {
            
            //1.SEKME
            Sekme1().tabItem {
                Text("1.sekme")
            }
            
            //2.SEKME
            Text("Gelen telefon armaları").tabItem {
                Image(systemName: "phone")
            }
            
            //3.SEKME
            Text("Giden telefon armaları").tabItem {
                Image(systemName: "phone.arrow.up.right")
                Text("Giden aramalar")
            }
            
        }
    }
}

struct Sekme1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("TabView Örnek-2").font(.largeTitle)
            Text("Sekme isimlerinde text ve image tarzi viewler olabilir").frame(maxWidth:.infinity).padding().background(Color.yellow).foregroundColor(.white).font(.title)
        }
    }
}

struct TabView_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Ornek2()
    }
}
