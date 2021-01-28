//
//  Ornek7_Interpolating_NegativeVelocity.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 28.01.2021.
//

import SwiftUI

struct Ornek7_Interpolating_NegativeVelocity: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Interpolating Spring").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Negative Inital Velocity").foregroundColor(.gray)
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("Gold"))
                        .shadow(radius: 10)
                        .overlay(
                            VStack {
                                Text("Daha büyük !")
                                Image("manzara").resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                       
                            })
                        .aspectRatio(CGSize(width: 1, height: 1.5), contentMode: .fit)
                        .scaleEffect(show ? 2 : 1, anchor: .leading)
                        .zIndex(1)
                        .animation(.interpolatingSpring(stiffness: 100, damping: 5, initialVelocity: -10))
                        .onTapGesture {
                            self.show.toggle()
                        }
                    
                    Text("Dikkat ederseniz, diktörgen ilk başta biraz daha küçülüp sonra büyüyor")
                    
                }.foregroundColor(.white)
                
                Spacer()
                
            }
            
            
         
            
        }.font(.title)
    }
}

struct Ornek7_Interpolating_NegativeVelocity_Previews: PreviewProvider {
    static var previews: some View {
        Ornek7_Interpolating_NegativeVelocity()
    }
}
