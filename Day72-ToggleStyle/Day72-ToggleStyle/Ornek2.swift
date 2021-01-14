//
//  Ornek2.swift
//  Day72-ToggleStyle
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State private var hamburger = false
    @State private var pizza = true

    var body: some View {
        VStack(spacing:20) {
            Text("ToggleStyle Örnek - 2").font(.largeTitle)
            Text("Siparişinizi girin").font(.title).foregroundColor(.red).bold()
            
            Toggle("", isOn: $hamburger).toggleStyle(CheckMarkToggleStyle(baslik: "Hamburger", renk: .green))
            
            Toggle("", isOn: $pizza).toggleStyle(CheckMarkToggleStyle(baslik: "Pizza", renk: .purple))
            
            
        }
    }
}

struct CheckMarkToggleStyle: ToggleStyle {
    var baslik = ""
    var renk = Color.primary
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Text(baslik)
            Spacer()
            Button(action: { configuration.isOn.toggle() }) {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square.fill").foregroundColor(renk)
            }
        }.font(.title).padding(.horizontal)
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
