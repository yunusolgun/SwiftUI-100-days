//
//  Dikdortgen_Ornek3.swift
//  Day21-DikdortgenselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//


import SwiftUI

struct Dikdortgen_Ornek3: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Rectangular Örnek - 3").font(.largeTitle)
            
            ZStack {
                RoundedRectangle(cornerRadius: 40).stroke(Color.orange,lineWidth: 40)
                RoundedRectangle(cornerRadius: 40).stroke()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 40).strokeBorder(Color.orange,lineWidth: 40)
                RoundedRectangle(cornerRadius: 40).stroke()
            }
            
            ZStack {
                Rectangle().padding()
                Rectangle().padding(40).colorInvert()
                Rectangle().padding(60)
                Rectangle().padding(80).colorInvert()
            }.frame(width:200,height:200)
            
            ZStack(alignment:.bottomLeading) {
                RoundedRectangle(cornerRadius: 30).fill(Color.secondary).frame(width:250, height: 250)
                RoundedRectangle(cornerRadius: 30).fill(Color.secondary).frame(width:200, height: 200)
                RoundedRectangle(cornerRadius: 30).fill(Color.secondary).frame(width:150, height: 150)
                RoundedRectangle(cornerRadius: 30).fill(Color.secondary).frame(width:100, height: 100)
            }
            
        }
    }
}

struct Dikdortgen_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Dikdortgen_Ornek3()
    }
}
