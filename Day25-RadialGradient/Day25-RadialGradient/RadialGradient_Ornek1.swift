//
//  RadialGradient_Ornek1.swift
//  Day25-RadialGradient
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct RadialGradient_Ornek1: View {
    
    @State private var baslangicYaricapDegeri: CGFloat = 10.0
    @State private var bitisYaricapDegeri: CGFloat = 200.0
    
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.white, Color.red, Color.orange]), center: .center, startRadius: baslangicYaricapDegeri, endRadius: bitisYaricapDegeri)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing:20) {
                Spacer()
                Text("Başlangıç yarıçap değeri: \(baslangicYaricapDegeri)").foregroundColor(.green).bold()
                HStack {
                    Text("0")
                    Slider(value: $baslangicYaricapDegeri, in: 0...350)
                    Text("350")
                }
                Text("Başlangıç yarıçap değeri: \(bitisYaricapDegeri)").foregroundColor(.purple).fontWeight(.bold)
                
                HStack {
                    Text("50")
                    Slider(value: $bitisYaricapDegeri, in: 50...400)
                    Text("400")
                }
                
                Rectangle().fill(RadialGradient(gradient: Gradient(colors: [Color.white, Color.purple]), center: .bottomTrailing, startRadius: 0, endRadius: 50)).frame(width: 80, height: 80).rotationEffect(.degrees(45)).shadow(color: .gray, radius: 20, x: 0.0, y: 20).padding()
                
                
            }
        }
    }
}

struct RadialGradient_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradient_Ornek1()
    }
}
