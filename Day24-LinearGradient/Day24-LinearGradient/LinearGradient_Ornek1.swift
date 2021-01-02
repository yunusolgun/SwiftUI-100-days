//
//  LinearGradient_Ornek1.swift
//  Day24-LinearGradient
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct LinearGradient_Ornek1: View {
    let gradientRenkler = Gradient(colors: [.red,.yellow,.blue])
    
    let linearGradient = LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradientRenkler, startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing:20) {
                Capsule().fill(linearGradient).frame(height:100).padding()
                Button(action: {}) {
                    Text("Linear Gradient Buton").foregroundColor(.white).bold().padding()
                }.background(linearGradient).cornerRadius(15)
                
                Circle().strokeBorder(linearGradient,lineWidth: 20).frame(height:200)
            }
            
        }
    }
}

struct LinearGradient_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient_Ornek1()
    }
}
