//
//  Ornek2.swift
//  Day68-TransformEffect
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI



struct Ornek2: View {
    @State private var dondur = false
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    @State private var dondurmeMiktari : Double = 0
    
    var body: some View {
        VStack(spacing:20) {
            Text("TransformEffect Örnek - 2").font(.largeTitle)
            Spacer()
            Image(systemName: "arrow.turn.up.left").font(.system(size: 40))
            Image(systemName: "pencil.and.outline")
                .border(Color.yellow,width:4)
                .font(.system(size: 100))
                .foregroundColor(.purple)
                .transformEffect(dondur ? CGAffineTransform(rotationAngle: CGFloat(Angle.degrees(dondurmeMiktari).radians)) : .identity)
                .border(Color.red,width:4)
            
            Spacer()
            
            HStack{
                Spacer()
                Button(action: { self.dondur = true}) {
                    Text("Döndürmeye başla").foregroundColor(.green).bold()
                }
                Spacer()
                Button(action: { self.dondur = false}) {
                    Text("Durdur").foregroundColor(.red).bold()
                }
                Spacer()
            }
                
        }.background(Color.black.edgesIgnoringSafeArea(.all)).foregroundColor(.white).onReceive(timer, perform: { _ in
            self.dondurmeMiktari = self.dondurmeMiktari>=360 ? 0: (self.dondurmeMiktari + 1)
        })
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
