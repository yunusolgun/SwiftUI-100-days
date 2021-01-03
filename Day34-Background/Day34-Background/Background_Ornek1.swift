//
//  Background_Ornek1.swift
//  Day34-Background
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Background_Ornek1: View {
    
    private let linearGradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.pink, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    var body: some View {
        VStack(spacing:20) {
            Text("Background").font(.largeTitle)
            Text("Background kontrolü ve şekiller")
            Circle().frame(width:130, height:45).background(Color.blue).foregroundColor(.green)
            
            Button(action: {}){
                Text("Linke gidin")
            }.padding().background(Color.yellow).foregroundColor(.gray)
            
            Text("Layout viewleri ve arka plan renk ataması")
            
            HStack {
                Text("Bu bir horizontal stack nesnesidir")
            }.padding().frame(maxWidth:.infinity).background(Color.yellow)
            
            
            Group {
                Text("Background gradient ve şekiller")
                Circle().frame(width:130, height:45).background(linearGradient).foregroundColor(.yellow)
                
                Text("Background gradient ve kontrol nesneleri")
                
                Button(action: {}){
                    Text("Görünümü Düzenle").padding().foregroundColor(.white).padding(.horizontal,20).background(linearGradient).cornerRadius(15)
                }
                
                Text("Background gradient ve layout nesneleri")
                VStack{
                    Text("Bu bir VStack nesnesidir").padding().foregroundColor(.white)
                }.frame(maxWidth:.infinity).background(linearGradient)
                
                Circle().frame(width:135, height:45).foregroundColor(.yellow).background(
                    Circle().foregroundColor(.black).offset(x: 3, y: 3)
                )
                
                Button(action: {}){
                    Text("Button").padding(.horizontal).foregroundColor(.white).font(.system(size: 25, weight: .bold, design: .rounded))
                }.padding().background(Capsule().foregroundColor(.yellow))
                
                
            }
            
        }
    }
}

struct Background_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Background_Ornek1()
    }
}
