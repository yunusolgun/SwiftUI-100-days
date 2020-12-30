//
//  Slider_Ornek3.swift
//  Day9-Slinder
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct Slider_Ornek3: View {
    @State private var secilenDeger = 0.5
    
    var body: some View {
        VStack(spacing:20) {
            Text("Slider Örnek - 3").font(.largeTitle)
            
            HStack {
                Image(systemName: "tortoise")
                Slider(value: $secilenDeger)
                Image(systemName: "hare")
            }.foregroundColor(.green).padding()
            
            HStack {
                Image(systemName: "speaker.fill")
                Slider(value: $secilenDeger)
                Image(systemName: "speaker.3.fill")
            }.foregroundColor(.accentColor).padding()
            
            VStack {
                Slider(value: $secilenDeger).accentColor(.orange)
                HStack {
                    Image(systemName: "circle")
                    Spacer()
                    Image(systemName: "circle.righthalf.fill")
                    Spacer()
                    Image(systemName: "circle.fill")
                }.foregroundColor(.orange).padding(.top,8)
            }.padding()
            
        }.font(.title)
    }
}

struct Slider_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Ornek3()
    }
}
