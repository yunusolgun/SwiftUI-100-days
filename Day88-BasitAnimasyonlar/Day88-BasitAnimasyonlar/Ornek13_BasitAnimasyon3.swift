//
//  Ornek13_BasitAnimasyon3.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek13_BasitAnimasyon3: View {
    @State private var openMenu = false
    
    var body: some View {
        VStack(spacing:20) {
            Text ("Animasyon Soru3").font(.largeTitle)
            
            Button("Open Menu") {
                self.openMenu.toggle()
            }
            
            Spacer()
            
            VStack(spacing:20) {
                Image(systemName: "line.horizontal.3")
                Text("My Menu!")
                Spacer()
            }.padding(20)
            .frame(maxWidth:.infinity, maxHeight: 200)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
            .padding(.horizontal)
            .foregroundColor(.white)
            .offset(x: 0, y: openMenu ? 0: 250)
            .opacity(openMenu ? 1 : 0)
            .scaleEffect(openMenu ? 1 : 0.15, anchor: .bottom)
            .animation(.default)
            
            
            
        }
    }
}

struct Ornek13_BasitAnimasyon3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek13_BasitAnimasyon3()
    }
}
