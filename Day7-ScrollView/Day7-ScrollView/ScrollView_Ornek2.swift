//
//  ScrollView_Ornek2.swift
//  Day7-ScrollView
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct ScrollView_Ornek2: View {
    
    var renkler : [Color] = [.gray, .purple,
                             .orange, .yellow, .green, .blue, .black]
    
    var body: some View {
        
        GeometryReader { gr in
            VStack(spacing:20) {
                Text("ScrollView Örnek-2").font(.largeTitle)
                Text("Yatay Scroll Özelliği").font(.title).foregroundColor(.gray)
                
                ScrollView(Axis.Set.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(renkler, id:\.self) { renk in
                            RoundedRectangle(cornerRadius: 15).fill(renk).frame(width:gr.size.width - 70, height:200)
                        }
                    }
                }
                
            }.padding(.horizontal)
            
            Spacer()
        }

    }
}

struct ScrollView_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Ornek2()
    }
}
