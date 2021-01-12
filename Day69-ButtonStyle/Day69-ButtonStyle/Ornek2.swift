//
//  Ornek2.swift
//  Day69-ButtonStyle
//
//  Created by yunus olgun on 12.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ButtonStyle Örnek - 2").font(.largeTitle)
            Text("Custom still tanımlama -1").font(.title).foregroundColor(.gray)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/)  {
                HStack {
                    Image(systemName: "square.and.arrow.up").font(.title)
                    Text("Paylaş").fontWeight(.semibold).font(.title)
                }
            }.buttonStyle(GradientBackgroundStyle())
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/)  {
                HStack {
                    Image(systemName: "square.and.pencil").font(.title)
                    Text("Düzenle").fontWeight(.semibold).font(.title)
                }
            }.buttonStyle(GradientBackgroundStyle())
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/)  {
                HStack {
                    Image(systemName: "trash").font(.title)
                    Text("Sil").fontWeight(.semibold).font(.title)
                }
            }.buttonStyle(GradientBackgroundStyle())
            
        }
    }
}

struct GradientBackgroundStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.frame(minWidth:0, maxWidth: .infinity).padding().foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [Color("KoyuYesil"), Color("AcikYesil")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(40).padding(.horizontal,25)
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
