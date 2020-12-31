//
//  Toggle_Ornek1.swift
//  Day14-Toggle
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct Toggle_Ornek1: View {
    
    @State private var acik = true
    var body: some View {
       
        Color.black.edgesIgnoringSafeArea(.vertical).overlay(
            VStack(spacing:20) {
                Text("Toggle Örnek - 1").font(.largeTitle)
                Text("Toggle varsayılan haliyle parent'e ait tüm genişliği kaplar").frame(maxWidth:.infinity).background(Color.blue).font(.title)
                
                Toggle("Uyarı modu", isOn: $acik).padding()
                
                Toggle(isOn: $acik) {
                    Text("Gece modu")
                    Image(systemName: "moon")
                }.padding()
                
                VStack {
                    Text("Alarm açık")
                    Toggle("Alarm açayım mı? Zten görünmeyeceğim", isOn: $acik).labelsHidden()
                }.padding(25).background(Color.blue).cornerRadius(20).shadow(color: .white, radius: 4, y: 2)
                
                
            }.foregroundColor(.white)
        )
        
    }
}

struct Toggle_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Toggle_Ornek1()
    }
}
