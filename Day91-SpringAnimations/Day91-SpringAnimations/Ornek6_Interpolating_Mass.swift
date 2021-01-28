//
//  Ornek6_Interpolating_Mass.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 28.01.2021.
//

import SwiftUI

struct Ornek6_Interpolating_Mass: View {
    @State private var change = false
    @State private var massValues = [0.01, 0.5, 1, 10, 100]
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Interpolating Spring").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Mass parametresi").foregroundColor(.gray)
                
                Text("Yay efektiyle çalışan animasyonda yayın ağırlığını ayarlar").frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color("Gold"))
                
                Button("Mass kontrol") { self.change.toggle() }
                
                HStack(alignment: .bottom, spacing:40) {
                    ForEach(massValues, id:\.self) { mass in
                        
                        VStack {
                            Text("\(String(format: "%.2f", mass))")
                            Spacer()
                            Rectangle()
                                .fill(Color("Gold"))
                                .frame(width:50, height: change ? 400 : 25)
                                .animation(.interpolatingSpring(mass: mass, stiffness: 50, damping: 1))
                        }
                    }
                    
                }.font(.system(size: 15)).foregroundColor(.white)
                
            }
        }.font(.title)
        
    }
}

struct Ornek6_Interpolating_Mass_Previews: PreviewProvider {
    static var previews: some View {
        Ornek6_Interpolating_Mass()
    }
}
