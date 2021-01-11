//
//  Ornek3.swift
//  Day66-ScaleEffect
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI

struct Ornek3: View {
    @State private var yatayTersCevir = false
    @State private var dikeyTersCevir = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("ScaleEffect Örnek - 3").font(.largeTitle)
            Text("View ters çevirme").foregroundColor(.gray).font(.title)
            
            Text("Yatayda ters çevirme")
            Text("Yatayda ters çevirme").scaleEffect(x: -1, y: 1)
            
            Text("Dikeyde ters çevirme")
            Text("Dikeyde ters çevirme").scaleEffect(x: 1, y: -1)
            
            Image("manzara").scaleEffect(x: yatayTersCevir ? -1 : 1, y: dikeyTersCevir ? -1 : 1)
            
            HStack {
                Toggle(isOn: $yatayTersCevir, label: {
                    Text("Yatayda ters çevir")
                }).padding(.horizontal)
                
                Toggle(isOn: $dikeyTersCevir, label: {
                    Text("Dikeyde ters çevir")
                }).padding(.horizontal)
                
                
            }
            
            
            VStack(spacing:20) {
                Text("Center").scaleEffect(x: 2, anchor: .center).border(Color.pink,width: 2)
                Text("TopLeading").scaleEffect(x: 2, anchor: .topLeading).border(Color.pink,width: 2)
                Text("Top").scaleEffect(x: 2, anchor: .top).border(Color.pink,width: 2)
                Text("TopTrailing").scaleEffect(x: 2, anchor: .topTrailing).border(Color.pink,width: 2)
                Text("Leading").scaleEffect(x: 2, anchor: .leading).border(Color.pink,width: 2)
                Text("Bottom").scaleEffect(x: 2, anchor: .bottom).border(Color.pink,width: 2)
                Text("BottomTrailing").scaleEffect(x: 2, anchor: .bottomTrailing).border(Color.pink,width: 2)
            }
            
            
        }
    }
}

struct Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3()
    }
}
