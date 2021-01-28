//
//  Ornek3_InterpolatingSpring_Stiffness.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 27.01.2021.
//

import SwiftUI

struct Ornek3_InterpolatingSpring_Stiffness: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Interpolating Spring").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Stiffness").foregroundColor(.gray)
                
                Text("Stiffness bir nesnenin hareketsizliği anlamına gelir. 0 tamamen hareketsiz demektir, değer artıkça hareketlilik artar.")
                    .frame(maxWidth:.infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Gold"))
                
                Button("Stiffness karşılaştırma") { self.change.toggle() }
                
                HStack(alignment:.bottom, spacing:30) {
                    VStack {
                        Text("0.7").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width:25, height: change ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 0.7, damping: 1))
                    }
                    
                    VStack {
                        Text("1").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width:25, height: change ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 1, damping: 1))
                    }
                    
                    VStack {
                        Text("10").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width:25, height: change ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 10, damping: 1))
                    }
                    
                    VStack {
                        Text("50").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width:25, height: change ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 50, damping: 1))
                    }
                    
                    VStack {
                        Text("100").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width:25, height: change ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 100, damping: 1))
                    }
                    
                    VStack {
                        Text("200").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width:25, height: change ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 200, damping: 1))
                    }
                    
           
                    
                    
                }.font(.system(size: 25))
                
                
            }.font(.title)
            
        }
    }
}

struct Ornek3_InterpolatingSpring_Stiffness_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3_InterpolatingSpring_Stiffness()
    }
}
