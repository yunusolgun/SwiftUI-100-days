//
//  Ornek8_Transition_Soru1.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct Ornek8_Transition_Soru1: View {
    @State private var step1 = true
    
    var body: some View {
        ZStack {
            Color("Dark")
            
            VStack(spacing:60) {
                
                Spacer()
                
                if step1 {
                    Text("Seyahate hazır mısın?")
                        .bold()
                        .transition(AnyTransition.move(edge: .leading))
                        .animation(Animation.easeOut(duration: 1.1))
                }
                
                if step1 {
                    VStack(spacing:60) {
                        Image("kenny").animation(Animation.easeIn(duration: 1))
                        
                        Capsule()
                            .fill(Color.pink)
                            .frame(height:100)
                            .offset(x: -50)
                            .animation(Animation.easeInOut(duration: 0.6))
                            .overlay(Text("Haydi çıkıyoruz!"))
                            .animation(Animation.easeOut(duration: 0.6))
                        
                    }.transition(.move(edge: .leading))
                    
                }
                
                Spacer()
                
            }
            
            
            // 2.SAYFA
            
            VStack(spacing:5) {
                if step1 == false {
                    Text("Nereye gitmek istiyorsunuz?")
                        .bold()
                        .padding(.horizontal,50)
                        .multilineTextAlignment(.center)
                        .transition(AnyTransition.move(edge: .top))
                        .animation(Animation.easeOut(duration: 0.8))
                }
                
                if step1 == false {
                    SeyehatDetaylariView()
                        .transition(.move(edge: .trailing))
                        .animation(Animation.easeIn(duration: 1))
                }
                
                if step1 == false {
                    Image("cartman")
                        .padding(.bottom,100)
                        .transition(.move(edge: .bottom))
                        .animation(Animation.easeOut(duration: 0.8))
                }
                
                
            }.padding(.top,40)
            
            
            VStack {
                Spacer()
                HStack(spacing:40) {
                    Button(action: { self.step1.toggle() }, label: {
                        Image(systemName: "chevron.left.circle.fill").rotationEffect(.degrees(step1 ? 180 : 0))
                    })
                    
                    if step1 == false {
                        Button(action: { self.step1.toggle() }, label: {
                            Image(systemName: "chevron.right.circle.fill").transition(AnyTransition.move(edge: .trailing).combined(with: .opacity))
                        })
                    }
                    
                }.font(.system(size: 50))
                .animation(Animation.easeIn(duration: 1))
            }.padding(.bottom,30)
            
        }.font(.largeTitle).foregroundColor(.white).edgesIgnoringSafeArea(.all)
    }
}

struct Ornek8_Transition_Soru1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek8_Transition_Soru1()
    }
}
