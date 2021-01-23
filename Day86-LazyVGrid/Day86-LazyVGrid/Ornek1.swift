//
//  Ornek1.swift
//  Day86-LazyVGrid
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek1: View {
    private var semboller = ["keyboard","hifispeaker.fill","printer.fill","tv.fill","desktopcomputer","headphones","tv.music.note","mic","plus.bubble","video"]
    
    private var renkler : [Color] = [.yellow, .purple, .green]
    
    //private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    //private var gridItemLayout : [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    //private var gridItemLayout : [GridItem] = [GridItem(.adaptive(minimum: 100))]
    //private var gridItemLayout = [GridItem(.fixed(100)),GridItem(.fixed(200))]
    private var gridItemLayout = [GridItem(.fixed(150)),GridItem(.adaptive(minimum: 50))]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns:gridItemLayout, spacing:20) {
                ForEach((0...10000), id:\.self) { deger in
                    Image(systemName: semboller[deger % semboller.count])
                        .font(.system(size: 30))
                        //.frame(width:50, height:50)
                        .frame(minWidth:0, maxWidth:.infinity, minHeight:50)
                        .background(renkler[deger % renkler.count])
                        .cornerRadius(10)
                }
            }
        }
        
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
