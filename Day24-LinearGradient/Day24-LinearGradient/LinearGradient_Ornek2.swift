//
//  LinearGradient_Ornek2.swift
//  Day24-LinearGradient
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct LinearGradient_Ornek2: View {
    let gradientRenkler = Gradient(colors: [.pink,.black])
    
    var body: some View {
        VStack(spacing:20) {
            Text("Linear Gradient Örnek-2").font(.largeTitle)
            Text("Gradient yönü").font(.title).foregroundColor(.gray)
            
            HStack(spacing:40) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("1.topLeading")
                    Text("2.top")
                    Text("3.topTrailing")
                    Text("4.leading")
                    Text("5.center")
                    Text("6.trailing")
                    Text("7.bottomLeading")
                    Text("8.bottom")
                    Text("9.bottomTrailing")
                }.font(.body)
                
                Image("Konumlar")
                
            }
            
            HStack(spacing:20) {
                Rectangle().fill(LinearGradient(gradient: gradientRenkler, startPoint: .leading, endPoint: .bottom)).frame(width:100,height:100)
                
                Rectangle().fill(LinearGradient(gradient: gradientRenkler, startPoint: .bottom, endPoint: .topTrailing)).frame(width:100,height:100)
                
                Rectangle().fill(LinearGradient(gradient: gradientRenkler, startPoint: .bottomTrailing, endPoint: .leading)).frame(width:100,height:100)
            }
            
            
            VStack(spacing:20) {
                Image("KonumlarKoordinat")
                
                HStack(spacing:20) {
                    Rectangle().fill(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: UnitPoint(x: 0, y: 0.34), endPoint: UnitPoint(x: 0.25, y: 0.75))).frame(width: 100, height: 100)
                    
                    Rectangle().fill(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: UnitPoint(x: 0.6, y: 0.6), endPoint: UnitPoint(x: 0.25, y: 0.75))).frame(width: 100, height: 100)
                    
                    Rectangle().fill(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: UnitPoint(x: 0.9, y: 0.8), endPoint: UnitPoint(x: 0.45, y: 0.35))).frame(width: 100, height: 100)
                    
                }
                
                
            }
            
            
            
        }
    }
}

struct LinearGradient_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        LinearGradient_Ornek2()
    }
}
