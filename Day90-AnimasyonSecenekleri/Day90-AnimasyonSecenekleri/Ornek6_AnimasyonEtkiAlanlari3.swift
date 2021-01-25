//
//  Ornek6_AnimasyonEtkiAlanlari3.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek6_AnimasyonEtkiAlanlari3: View {
    @State private var unlock = false
    @State private var open = false
    
    var body: some View {
        VStack(spacing:20){
            Text("Animation Scope").font(.largeTitle)
            Text("Çoklu View Animasyonları").foregroundColor(.gray)
            
            
            Button(action: {
                withAnimation {
                    self.unlock.toggle()
                }
            }, label: {
                Image(systemName: unlock ? "unlock.open" : "lock")
                    .offset(x:self.unlock ? 5 : 0)
            })
            
            GeometryReader { geometry in
                ZStack {
                    VStack {
                        Text("Merhaba")
                        Image(systemName: "heart.fill").foregroundColor(.pink)
                    }.font(.system(size: 50))
                    
                    HStack(spacing:0) {
                        Rectangle().fill(self.unlock ? Color.green : Color.red)
                            .offset(x: self.open ? -geometry.size.width/2 : 0)
                        
                        Rectangle().fill(self.unlock ? Color.green : Color.red)
                            .offset(x: self.open ? geometry.size.width/2 : 0)
                        
                    }
                    
                    
                    if self.unlock && self.open == false {
                        Button("G Ö S T E R") {
                            withAnimation(Animation.easeOut(duration: 0.7)) {
                                self.open = true
                            }
                        }
                    }
                    
                }
            }
            
        }.font(.title).edgesIgnoringSafeArea(.bottom)
    }
}

struct Ornek6_AnimasyonEtkiAlanlari3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek6_AnimasyonEtkiAlanlari3()
    }
}
