//
//  Ornek1.swift
//  Day53-ColorInvert
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Color Invert Örnek - 1").font(.largeTitle)
            Text("Color Invert metodunu kullanarak bir rengin, renk tekerindeki tam zıttında bulunan renk değerinin elde edilmesi sağlanır.").frame(maxWidth:.infinity).font(.title).background(Color.green).layoutPriority(1).foregroundColor(.white)
            
            HStack {
                Spacer()
                Text("Orjinak Renk")
                Spacer()
                Text("Ters Renk")
                Spacer()
            }
            
            Group {
                HStack {
                    Color.green
                    Color.green.colorInvert()
                }
                
                HStack {
                    Color.red
                    Color.red.colorInvert()
                }
                
                HStack {
                    Color.yellow
                    Color.yellow.colorInvert()
                }
                
                HStack {
                    Color.blue
                    Color.blue.colorInvert()
                }
                
                HStack {
                    Color.purple
                    Color.purple.colorInvert()
                }
                
                HStack {
                    Color.pink
                    Color.pink.colorInvert()
                }
            }
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
