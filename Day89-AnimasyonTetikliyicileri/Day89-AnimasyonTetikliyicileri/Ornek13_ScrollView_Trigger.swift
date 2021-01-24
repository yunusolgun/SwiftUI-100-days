//
//  Ornek13_ScrollView_Trigger.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek13_ScrollView_Trigger: View {
    
    var colors: [Color] = [.green, .blue, .red, .purple, .pink, .orange, .yellow]
    
    
    var body: some View {
        VStack(spacing:20) {
            Text("Trigger").font(.largeTitle)
            Text("ScrollView").font(.title).foregroundColor(.gray)
            
            ScrollView {
                ZStack {
                    
                    GeometryReader { gr in
                        Image("night")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(x: 0, y: -gr.frame(in: .global).origin.y / 2)
                        
                    }
                    
                    VStack(spacing:20) {
                        
                        ForEach(1...7, id:\.self) { deger in
                            RoundedRectangle(cornerRadius: 20)
                                .fill(colors[deger-1])
                                .frame(height:200)
                                .opacity(0.7)
                                .overlay(Text("Ürün-\(deger)"))
                                .foregroundColor(.white)
                        }
                        
                    }.padding(.all, 40).font(.largeTitle)
                    
                    
                }.edgesIgnoringSafeArea(.all)
            }.animation(.default)
            
        }
    }
    
    
}

struct Ornek13_ScrollView_Trigger_Previews: PreviewProvider {
    static var previews: some View {
        Ornek13_ScrollView_Trigger()
    }
}
