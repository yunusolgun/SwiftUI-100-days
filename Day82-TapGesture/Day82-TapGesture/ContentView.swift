//
//  ContentView.swift
//  Day82-TapGesture
//
//  Created by yunus olgun on 21.01.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var ciftTiklame = false
    @State private var ucTiklama = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("TapGesture Ornek-1").font(.largeTitle)
            Text("Mektubu" + (ciftTiklame ? " kapatmak" : " acmak") + " için çift tıklayın")
            
            Image(systemName: ciftTiklame ? "envelope.open.fill": "envelope.fill").font(.system(size: 100))
                .padding()
                .foregroundColor(ucTiklama ? .orange : .pink)
                .frame(width:200, height:200)
                .onTapGesture(count: 2, perform: {
                    self.ciftTiklame.toggle()
                })
//                .onTapGesture(count: 3, perform: {
//                    self.ucTiklama.toggle()
//                })
            
            Text("Bu mektubu sana Türkiye'den gönderiyorum").font(.title).opacity(ciftTiklame ? 1:0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
