//
//  TabView_Ornek4.swift
//  TabView
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TabView_Ornek4: View {
    
    @State private var secilenSekme = 1
    
    var body: some View {
        TabView(selection: $secilenSekme)
        {
            // 1.SEKME
            VStack(spacing:20) {
                Text("TabView Örnek-4").font(.largeTitle)
                Text("Navigation").font(.title).foregroundColor(.gray)
                Button("3.sekmeye git") {
                    self.secilenSekme = 3
                }.font(.title).foregroundColor(.green)
            }.tabItem {
                Image(systemName: "star.fill")
            }.tag(1)
            
            
            // 2.SEKME
            VStack(spacing:20) {
                Text("Burası 2.ekran")
                Button("1.sekmeye git") {
                    self.secilenSekme = 1
                }.font(.title).foregroundColor(.red)
            }.tabItem {
                Image(systemName: "moon.fill")
            }.tag(2)
            
            
            // 3.SEKME
            VStack(spacing:20) {
                Text("Burası 3.ekran")
                Button("2.sekmeye git") {
                    self.secilenSekme = 2
                }.font(.title).foregroundColor(.blue)
            }.tabItem {
                Image(systemName: "sun.min.fill")
            }.tag(3)
            
            
        }.accentColor(.yellow)
    }
}

struct TabView_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Ornek4()
    }
}
