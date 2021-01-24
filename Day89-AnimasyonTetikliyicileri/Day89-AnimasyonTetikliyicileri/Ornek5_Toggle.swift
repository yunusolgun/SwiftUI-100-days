//
//  Ornek5_Toggle.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek5_Toggle: View {
    @State private var isOn = false
    @State private var extraInfo = ""
    @State private var extraAmount = 0.65
    
    
    var body: some View {
        VStack(spacing:20) {
            Text("Triggers").font(.largeTitle)
            Text("Toggle").font(.title).foregroundColor(.gray)
            
            Toggle("Ek Seçenekler", isOn: $isOn).padding(.horizontal)
            
            Group {
                VStack(spacing:20) {
                    Image(systemName: "hammer.fill")
                    Text("Senin için ek seçenekler")
                    TextField("Ek bilgi", text: $extraInfo).textFieldStyle(RoundedBorderTextFieldStyle())
                    Slider(value: $extraAmount)
                }.padding(.all,30)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
            }.padding(.horizontal)
            .saturation(isOn ? 1 : 0)
            .opacity(isOn ? 1 :0.25)
            .animation(.default)
            
        }.font(.title)
    }
}

struct Ornek5_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        Ornek5_Toggle()
    }
}
