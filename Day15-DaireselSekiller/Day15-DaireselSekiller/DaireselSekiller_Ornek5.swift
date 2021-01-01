//
//  DaireselSekiller_Ornek5.swift
//  Day15-DaireselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct DaireselSekiller_Ornek5: View {
    
    @State private var circleProgress: CGFloat = 0.7
    
    private var daireYuzde: Int { Int(circleProgress * 100) }
    
    var body: some View {
        
        VStack(spacing:20) {
            Text("Size fonksiyonuyla width:80, height:80")
            Circle().size(width: 80, height: 80).padding(30).background(Color.purple)
            
            Circle().trim(from: 0.0, to: circleProgress)
                .stroke(Color.purple,style: StrokeStyle(lineWidth: 40, lineCap: .round))
                .frame(height:300)
                .overlay(
                    Text(circleProgress == 1 ? "İşlem Tamamlandı" : "% \(daireYuzde)")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                ).padding(40)
            
            
            VStack {
                Text("İşlem durumu")
                HStack {
                    Text("% 0")
                    Slider(value: $circleProgress)
                    Text("% 100")
                }
            }.padding()
            
        }
        
    }
}

struct DaireselSekiller_Ornek5_Previews: PreviewProvider {
    static var previews: some View {
        DaireselSekiller_Ornek5()
    }
}
