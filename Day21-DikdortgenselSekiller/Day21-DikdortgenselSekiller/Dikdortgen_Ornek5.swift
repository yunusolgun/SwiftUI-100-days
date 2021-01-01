//
//  Dikdortgen_Ornek5.swift
//  Day21-DikdortgenselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//


import SwiftUI

struct Dikdortgen_Ornek5: View {
    @State private var progressDeger: CGFloat = 0.7
    private var yuzdeProgress: Int { Int(progressDeger * 100.0) }
    
    var body: some View {
        VStack(spacing:20) {
            Text("Rectangular Örnek - 5").font(.largeTitle)
            Text("Trim fonksiyonu").font(.title)
            
            Rectangle()
                .trim(from: 0, to: progressDeger)
                .stroke(Color.pink,style: StrokeStyle(lineWidth:40, lineCap: .round))
                .frame(height:300)
                .overlay(
                    Text(yuzdeProgress == 100 ? "İşlem tamamlandı": "%\(yuzdeProgress)")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                ).padding(40)
            
            
            VStack {
                Text("Sürecin durumu")
                HStack {
                    Text("%0")
                    Slider(value: $progressDeger)
                    Text("%100")
                }
            }.padding()
            
        }
    }
}

struct Dikdortgen_Ornek5_Previews: PreviewProvider {
    static var previews: some View {
        Dikdortgen_Ornek5()
    }
}
