//
//  Ornek2_InteractiveSpring.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 27.01.2021.
//

import SwiftUI

struct Ornek2_InteractiveSpring: View {
    @State private var change = false
    @State private var showPopup = false
    @State private var animate = true
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
            
            VStack(spacing:20 ) {
                Text("Inteactive Spring").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Spring vs Interactive Spring").foregroundColor(.gray)
                
                Button(action: {self.change.toggle()}, label: {
                    Text("Change")
                })
                
                HStack(alignment: .top, spacing: 50) {
                    VStack {
                        Text("Spring")
                        Rectangle().fill(Color("Gold"))
                            .frame(width:100, height: change ? 400 : 100)
                            .animation(.spring(dampingFraction: 0.2))
                    }
                    VStack {
                        Text("Interactive Spring")
                        Rectangle().fill(Color("Gold"))
                            .frame(width:100, height: change ? 400 : 100)
                            .animation(.interactiveSpring(dampingFraction: 0.2))
                    }
                    
                }.foregroundColor(.white)
                Spacer()
                
                Button("Popup göster") {
                    self.animate.toggle()
                    self.showPopup = true
                }
                
                
            }.font(.title)
            .blur(radius: showPopup ? 2:0)
            .animation(.easeOut)
            
            
            ZStack {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                    .animation(.none)
                
                VStack {
                    Circle().fill(Color("Gold"))
                        .frame(width: 70, height: 70)
                        .overlay(Image(systemName: "questionmark.circle").font(.system(size: 50)).foregroundColor(.white))
                        .offset(y:40)
                        .zIndex(1)
                
                
                VStack {
                    Color("Gold").frame(height:40)
                    Spacer()
                    Text("Animasyonlu bir şekilde bu popup açılsın")
                    Spacer()
                    Button("Kapat") {
                        self.showPopup = false
                        
                    }.padding(.vertical,12)
                    .frame(maxWidth:.infinity)
                    .background(Color("Gold"))
                    
                }.background(Color.white)
                .cornerRadius(12)
                    
                }.frame(height:300)
                .background(Color.clear)
                .padding(.horizontal,25)
                .scaleEffect(x: showPopup ? 1 : 0.8, y: showPopup ? 1 : 1.3)
                .animation(.interactiveSpring(response: 0.3, dampingFraction: 0.3), value: animate)
                
                
                
            }.opacity(showPopup ? 1 : 0)
            
            
        }.accentColor(.white)
    }
}

struct Ornek2_InteractiveSpring_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2_InteractiveSpring()
    }
}
