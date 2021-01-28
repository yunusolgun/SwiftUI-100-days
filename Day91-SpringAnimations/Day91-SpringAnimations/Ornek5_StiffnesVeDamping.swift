//
//  Ornek5_StiffnesVeDamping.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 27.01.2021.
//

import SwiftUI

struct Ornek5_StiffnesVeDamping: View {
    @State private var change = false
    
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Interpolating Spring").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Stiffness ve Damping").foregroundColor(.gray)
                
                Text("Stiffness parametresini ayarlayarak sonuç görünümüne ulaşma hızını, Damping parametresiyle de animasyonun sıçrama miktarını kontrol edebilirsiniz").frame(maxWidth:.infinity).foregroundColor(.white).background(Color("Gold"))
                
                Button("Stiffness ve Damping karşılaştırma") { self.change.toggle() }.font(.headline)
                
                
                
                HStack(alignment:.bottom, spacing:40) {
                    
                    VStack {
                        Text("Sonuç durumu").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 50, height: 400)
                            
                    }
                    
                    
                    VStack {
                        Text("50, 7").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 50, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 50, damping: 7))
                            
                    }
                    
                    
                    VStack {
                        Text("1, 1").bold()
                        Spacer()
                        Rectangle().fill(Color("Gold"))
                            .frame(width: 50, height: change ? 400 : 25)
                            .animation(.interpolatingSpring(stiffness: 1, damping: 1))
                            
                    }
                    
                    
                }.font(.system(size: 25)).foregroundColor(.white)
                
                
                
            }.font(.title)
            
            Rectangle().stroke(Color.red, lineWidth: 2).frame(width: 400, height: 120)
                .padding(.top,12)
        }
        
        
    }
}

struct Ornek5_StiffnesVeDamping_Previews: PreviewProvider {
    static var previews: some View {
        Ornek5_StiffnesVeDamping()
    }
}
