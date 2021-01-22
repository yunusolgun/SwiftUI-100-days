//
//  Ornek1.swift
//  Day85-HighPriorityGesture
//
//  Created by yunus olgun on 22.01.2021.
//

import SwiftUI

struct Ornek1: View {
    
    @State private var arkaPlanRenkDegistir = false
    @State private var daireRenkDegistir = false
    
    
    var body: some View {
        ZStack {
            (arkaPlanRenkDegistir ? Color.gray : Color.black).edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("HighPriorityGesture Örnek-1").font(.title).foregroundColor(.white)
                Circle().fill(daireRenkDegistir ? Color.orange : Color.blue)
                    .frame(width: 200, height: 200)
                    .overlay(Text("Çift Tıkla").foregroundColor(.white).font(.title).bold())
                    .onTapGesture(count: 2, perform: {
                        self.daireRenkDegistir.toggle()
                    })
                
                Spacer()
                Text("Çift tıkla").foregroundColor(.red).bold().font(.title)
                Spacer()
                
            }.padding()
            
        }.highPriorityGesture(TapGesture(count: 2).onEnded({
            self.arkaPlanRenkDegistir.toggle()
        }))
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
