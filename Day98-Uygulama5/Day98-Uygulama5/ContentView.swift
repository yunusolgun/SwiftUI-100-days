//
//  ContentView.swift
//  Day98-Uygulama5
//
//  Created by yunus olgun on 31.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}


struct Home: View {
    let renkler = [Color("Renk1"),Color("Renk2")]
    @State var progress: CGFloat = 30
    var body: some View {
        VStack {
            Gosterge(progress: $progress)
            HStack(spacing:25) {
                
                Button(action: {
                    withAnimation(Animation.default.speed(0.55)) {
                        self.progress = (self.progress + 10 > 100 ? 100 : self.progress + 10)
                    }
                    
                }) {
                    Text("Güncelle").padding(.vertical,10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                        .background(Capsule().stroke(LinearGradient(gradient: Gradient(colors: renkler), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), lineWidth: 2))
                }
                
                Button(action: {
                    withAnimation(Animation.default.speed(0.55)) {
                        self.progress = 0
                    }
                }) {
                    Text("Sıfırla").padding(.vertical,10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                        .background(Capsule().stroke(LinearGradient(gradient: Gradient(colors: renkler), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                }
                
                
            }.padding(.top,55)
        }
    }
}


struct Gosterge: View {
    let renkler = [Color("Renk1"),Color("Renk2")]
    @Binding var progress: CGFloat
    
    func progressAyarla() -> CGFloat {
        return (self.progress / 2) * 0.01
    }
    
    func gostergeOkAyarla() -> Double {
        let deger = self.progress / 100
        return Double(deger * 180)
    }
    
    var body: some View {
        ZStack {
            ZStack {
                Circle().trim(from: 0, to: 0.5)
                    .stroke(Color.black.opacity(0.1),lineWidth: 55)
                    .frame(width:300, height: 300)
                
                Circle().trim(from: 0, to: progressAyarla())
                    .stroke(AngularGradient(gradient: Gradient(colors: self.renkler), center: .center, angle: .init(degrees: 180)), lineWidth: 55)
                    .frame(width:300, height: 300)
              
                
            }.rotationEffect(.init(degrees: 180))
            
            ZStack(alignment: .bottom){
                self.renkler[0].frame(width: 2, height: 95)
                Circle().fill(self.renkler[0]).frame(width: 15, height: 15)
            }.offset(y: -35)
            .rotationEffect(.init(degrees: -90))
            .rotationEffect(.init(degrees: self.gostergeOkAyarla()))
            
        }.offset(y:120)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
