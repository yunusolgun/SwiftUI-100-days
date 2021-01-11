//
//  Ornek3.swift
//  Day68-TransformEffect
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI

struct Ornek3: View {
    @State private var olceklendir = false
    let timer = Timer.publish(every: 0.001, on: .main, in: .common).autoconnect()
    @State private var olceklendirmeOrani : CGFloat = 1
    
    var body: some View {
        VStack(spacing:20) {
            Text("TransformEffect Örnek - 3").font(.largeTitle)
            Spacer()
            Image(systemName: "flame").border(Color.yellow, width: 4)
                .font(.system(size: 100))
                .foregroundColor(.purple)
                .transformEffect(olceklendir ? CGAffineTransform(scaleX: olceklendirmeOrani, y: olceklendirmeOrani) : .identity)
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: { self.olceklendir = true}) {
                    Text("Ölçeklendir").foregroundColor(.green).bold()
                }
                Spacer()
                Button(action: { self.olceklendir = false}) {
                    Text("Normal boyutlandır").foregroundColor(.red).bold()
                }
                Spacer()
            }
            
        }.background(Color.black.edgesIgnoringSafeArea(.all)).foregroundColor(.white).onReceive(timer, perform: { _ in
            self.olceklendirmeOrani = self.olceklendirmeOrani > 5 ? 0.5 : (self.olceklendirmeOrani * 1.001)
        })
    }
}

struct Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3()
    }
}
