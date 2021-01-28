//
//  Ornek4_InterpolatingSpring_Damping.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 27.01.2021.
//

import SwiftUI

struct Ornek4_InterpolatingSpring_Damping: View {
    @State private var changeDamping = false
    
    
    var body: some View {
        
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Interpolating Spring").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Damping parametreis").foregroundColor(.gray)
                
                Text("Damping parametresi yay efektine ne kadar sürükleme veya sürtünme efekti vereceğini ayarlar")
                    .frame(maxWidth:.infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Gold"))
                
                Button("Damping karşılaştırma") { self.changeDamping.toggle() }
                
                HStack(alignment:.bottom, spacing:30) {
                    
                    VStack {
                        Text("0").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 40, height: changeDamping ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 10, damping: 0))
                    }
                    
                    VStack {
                        Text("0.5").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 40, height: changeDamping ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 10, damping: 0.5))
                    }
                    
                    VStack {
                        Text("1").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 40, height: changeDamping ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 10, damping: 1))
                    }
                    
                    VStack {
                        Text("3").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 40, height: changeDamping ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 10, damping: 3))
                    }
                    
                    VStack {
                        Text("5").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 40, height: changeDamping ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 10, damping: 5))
                    }
                    
                    VStack {
                        Text("10").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 40, height: changeDamping ? 400 : 25)
                            .animation(Animation.interpolatingSpring(stiffness: 10, damping: 10))
                    }
                    
                }.font(.system(size: 25)).foregroundColor(.white)
                
                
            }.font(.title)
            
            
        }
        
        
    }
}

struct Ornek4_InterpolatingSpring_Damping_Previews: PreviewProvider {
    static var previews: some View {
        Ornek4_InterpolatingSpring_Damping()
    }
}
