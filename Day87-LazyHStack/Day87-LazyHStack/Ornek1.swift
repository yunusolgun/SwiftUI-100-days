//
//  Ornek1.swift
//  Day87-LazyHStack
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek1: View {
    private var semboller = ["keyboard","hifispeaker.fill","printer.fill","tv.fill","desktopcomputer","headphones","tv.music.note","mic","plus.bubble","video"]
    
    private var renkler : [Color] = [.yellow, .purple, .green]
    
    //private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
//    private var gridItemLayout : [GridItem] = Array(repeating: .init(.flexible()), count: 5)
    private var gridItemLayout = [GridItem(.fixed(150)), GridItem(.adaptive(minimum: 300))]
    
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHGrid(rows:gridItemLayout, spacing:20) {
                ForEach(0...999, id:\.self) {
                    Image(systemName: semboller[$0 % semboller.count])
                        .font(.system(size: 30))
                        .frame(maxWidth:.infinity, minHeight:50, maxHeight:.infinity)
                        .background(renkler[$0 % renkler.count])
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
