//
//  Ornek1.swift
//  Day78-DragGesture
//
//  Created by yunus olgun on 15.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var daireninKonumu = CGPoint(x: 55, y: 55)
    @State private var lblDaire = "55,55"
    @GestureState private var surukleniyor = false
    @State private var dragDuzgunBitti = true
    
    var body: some View {
        VStack(spacing:20) {
            Text("DragGesture Örnek-1").font(.largeTitle)
            Text("Daireyi Sürükleyin").foregroundColor(.gray)
            Text("Daire " + (surukleniyor ? "Sürükleniyor": "Sürüklenmiyor"))
                .foregroundColor(surukleniyor ? .green:.blue).bold()
            Circle().fill(surukleniyor ? Color.orange : Color.blue)
                .padding(.horizontal)
                .frame(width:150,height: 150)
                .opacity(0.8)
                .overlay(
                    Text(lblDaire)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                )
                .position(daireninKonumu)
                .gesture(DragGesture().onChanged({ deger in
                    self.daireninKonumu = deger.location
                    self.lblDaire = "\(Int(deger.location.x)) , \(Int(deger.location.y))"
                }).updating($surukleniyor) { (deger, durum, yapilanIslem) in
                    durum = true
                }.onEnded({ deger in
                    self.dragDuzgunBitti = deger.location.x < 200 ? true: false
                })
                
                )
                
            Text("Updating metoduna, drag işlemi bittiğinde değerini resetlemek istediğiniz değişkeni parametre olarak göndermeniz gerekiyor").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white)
            
            
        }.font(.title).background(dragDuzgunBitti ? Color.clear : Color.red)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
