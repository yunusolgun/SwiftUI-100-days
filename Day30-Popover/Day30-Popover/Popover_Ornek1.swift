//
//  Popover_Ornek1.swift
//  Day30-Popover
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Popover_Ornek1: View {
    @State private var gorunsunPopover = false
    var body: some View {
        
        ZStack {
            Color.black
            
            Button(action: {
                self.gorunsunPopover = true
            }, label: {
                Image(systemName: "questionmark.circle.fill").font(.largeTitle).foregroundColor(.white)
            }).popover(isPresented: $gorunsunPopover, arrowEdge: .top) {
                VStack(spacing:20) {
                    Text("Popover Örnek - 1").font(.largeTitle).foregroundColor(.red)
                    Text("Bool değişkeninin değeri değişti").font(.title).foregroundColor(.gray)
                    Text("Değişken değerini değiştirerek popover'ın görünmesini tetikleyebilirsiniz").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white)
                }.frame(height:300)
            }
            
        }.edgesIgnoringSafeArea(.vertical)
    }
}

struct Popover_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Popover_Ornek1()
    }
}
