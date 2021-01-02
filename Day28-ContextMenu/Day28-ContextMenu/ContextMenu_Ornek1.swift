//
//  ContextMenu_Ornek1.swift
//  Day28-ContextMenu
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct ContextMenu_Ornek1: View {
    
    @State private var goruntu: Image? = nil
    
    private var secenekGoruntu = ContextMenu {
        Button(action: {}) {
            Text("Değiştir")
            Image(systemName: "square.on.square")
        }
        
        Button(action: {}) {
            Text("Paylaş")
            Image(systemName: "square.and.arrow.up")
        }
        
    }
    
    var body: some View {
        VStack(spacing:20) {
            Text("Context Menü Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            HStack {
                Text("Yardıma ihtiyacım var")
                Spacer()
                Image(systemName: "questionmark.diamond.fill")
                    .font(.title)
                    .foregroundColor(.orange)
                    .frame(width: 45, height: 45)
                    .contextMenu {
                        
                        Button(action: {}) {
                            Text("Renk Seçimi")
                            Image(systemName: "eyedropper.full")
                        }
                        
                        Button(action: {}) {
                            Text("Renk Değişimi")
                            Image(systemName: "circle.lefthalf.fill")
                        }
                        
                    }
            }
            
            // 2.Örnek
            Button(action: {
                self.goruntu = Image("manzara").resizable()
            }) {
                Text(goruntu == nil ? "Görüntü seç" : "Düzenle(Uzun Bas)")
                    .foregroundColor(goruntu == nil ? .blue : .white)
            }.frame(width: 200, height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 10).stroke(Color.gray,style: StrokeStyle(lineWidth:5, dash: [10, 10]))
                    .background(goruntu == nil ? nil : goruntu)
                    .contextMenu(goruntu == nil ? nil : secenekGoruntu)
            )
            
            
            
            
        }.padding()
    }
}

struct ContextMenu_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu_Ornek1()
    }
}
