//
//  Ornek1.swift
//  Day72-ToggleStyle
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var toggleDurum = true
    var body: some View {
        VStack(spacing:20) {
            Text("ToggleStyle Örnek -1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Group {
                Text("DefaultToggleStyle").font(.title).foregroundColor(.red)
                Toggle("DefaultToggleStyle", isOn: $toggleDurum)
                
                Text("SwitchToggleStyle").font(.title).foregroundColor(.red)
                Toggle("SwitchToggleStyle", isOn: $toggleDurum).toggleStyle(SwitchToggleStyle())
                
            }
            
            Text("CustomToggleStyle").font(.title).foregroundColor(.red)
            Toggle("Görünmeyecek", isOn: $toggleDurum).toggleStyle(CustomToggleStyle(label: "CustomToggleStyle"))
            
        }
    }
}


struct CustomToggleStyle: ToggleStyle {
    var label = "Başlık"
    func makeBody(configuration: Configuration) -> some View {
        Toggle(isOn: configuration.$isOn){
            Text(label).foregroundColor(configuration.isOn ? .green : .red).font(.system(size: 26, weight: .bold, design: .rounded))
        }.padding(.horizontal)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
