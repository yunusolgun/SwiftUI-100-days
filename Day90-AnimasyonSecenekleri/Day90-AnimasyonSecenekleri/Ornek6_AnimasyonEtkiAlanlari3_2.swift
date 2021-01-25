//
//  Ornek6_AnimasyonEtkiAlanlari3_2.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek6_AnimasyonEtkiAlanlari3_2: View {
    @State private var show1 = false
    @State private var show2 = false
    @State private var show3 = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animation Scope").font(.largeTitle)
            Text("Sıralı animasyon").foregroundColor(.gray)
            
            Button("Change") {
                withAnimation(Animation.default) {
                    self.show1.toggle()
                }
                
                withAnimation(Animation.easeOut.delay(0.5)) {
                    self.show2.toggle()
                }
                
                withAnimation(Animation.default.delay(1)) {
                    self.show3.toggle()
                }
            }
            
            Spacer()
            VStack(spacing:40) {
                Image(systemName: "1.circle").opacity(show1 ? 1: 0)
                Image(systemName: "2.circle").opacity(show2 ? 1: 0)
                Image(systemName: "3.circle").opacity(show3 ? 1: 0)
            }.font(.system(size: 100))
            Spacer()
            
            
        }.font(.title)
    }
}

struct Ornek6_AnimasyonEtkiAlanlari3_2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek6_AnimasyonEtkiAlanlari3_2()
    }
}
