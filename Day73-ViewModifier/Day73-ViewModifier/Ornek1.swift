//
//  Ornek1.swift
//  Day73-ViewModifier
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ViewModifier Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("ViewModifier'i tekrar edeceğiniz görünüm düzenlemelerini başka bir view için kullanmanız gerektiği durumldarda oluşturabilirsiniz")
                .frame(maxWidth:.infinity)
                .font(.title)
                .padding()
                .background(Color.orange)
                .layoutPriority(2)
                .foregroundColor(.white)
            
            Text("ViewModifier ile benzer görünümü oluşturalım").modifier(TextGorunum())
            
            Button("Buton", action: {}).modifier(TextGorunum())
            
        }
    }
}

struct TextGorunum: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(maxWidth:.infinity)
            .font(.title)
            .padding()
            .background(Color.orange)
            .layoutPriority(2)
            .foregroundColor(.white)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
