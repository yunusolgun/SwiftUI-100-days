//
//  Slider_Ornek2.swift
//  Day9-Slinder
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct Slider_Ornek2: View {
    
    @State private var sliderDegeri = 0.5
    
    var body: some View {
        VStack(spacing:20) {
            Text("Slider Örnek - 2").font(.largeTitle)
            
            Slider(value: $sliderDegeri).padding(.horizontal).background(Color.orange).cornerRadius(20).padding().shadow(radius: 3,y:3)
            
            Text("Çiziginin rengini değiştirmek için accentColor metodunu kullanabilirsiniz.")
            
            Slider(value:$sliderDegeri).padding(.horizontal).accentColor(.orange)
            
            Text("Slider ve Kenarlık")
            
            Slider(value: $sliderDegeri).padding().background(Color.black).cornerRadius(20)
            
            Slider(value: $sliderDegeri).padding().background(RoundedRectangle(cornerRadius: 30).stroke(Color.orange,lineWidth: 5)).padding(.horizontal)
            
            Slider(value: $sliderDegeri).padding().background(Color.orange).cornerRadius(30).padding().accentColor(.black)
            
        }
    }
}

struct Slider_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Ornek2()
    }
}
