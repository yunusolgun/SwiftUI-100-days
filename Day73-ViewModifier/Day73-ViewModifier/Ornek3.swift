//
//  Ornek3.swift
//  Day73-ViewModifier
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek3: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ViewModifier Örnek - 3").font(.largeTitle)
            Text("Buton Set Uygulaması").font(.title).foregroundColor(.gray)
            
            HStack {
                Button(action: {}) {
                    Text("Devam")
                }.modifier(ButonSetModifier())
                
                Button(action: {}) {
                    Text("Detayları göster")
                }.modifier(ButonSetModifier(fontSize: 10, backgroundColor: .green))
                
                Button(action: {}) {
                    Text("İptal")
                }.modifier(ButonSetModifier(backgroundColor: .red))
            }
        }
    }
}

struct ButonSetModifier: ViewModifier {
    @State var fontSize : CGFloat = 16
    @State var backgroundColor = Color.blue
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: fontSize))
            .padding(.horizontal,15)
            .padding(.vertical,10)
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: 3).strokeBorder(style: StrokeStyle(lineWidth:1)).foregroundColor(Color(.sRGB,red:0.1,green:0.1,blue:0.1, opacity: 1))
            )
            .cornerRadius(4)
            .shadow(color: Color.black.opacity(0.5), radius: 5)
    }
}

struct Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3()
    }
}
