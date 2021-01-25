//
//  Ornek2_Delay_Animation2.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek2_Delay_Animation2: View {
    @State private var show = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Delay Animations").font(.largeTitle)
            Text("Sıralı Animasyonlar").foregroundColor(.gray)
            
            Spacer()
            
            VStack(spacing:60) {
                Group {
                    Image(systemName: "1.circle").opacity(show ? 1 : 0)
                        .animation(Animation.easeIn.delay(0.5))
                    
                    Image(systemName: "2.circle").opacity(show ? 1 : 0)
                        .animation(Animation.easeIn.delay(1))
                    
                    Image(systemName: "3.circle").opacity(show ? 1 : 0)
                        .animation(Animation.easeIn.delay(1.5))
                    
                }.font(.system(size: 100))
                
                Button("GO!",action:{})
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .padding(.all, 25)
                    .background(Circle().fill(Color.green))
                    .opacity(show ? 1: 0)
                    .animation(Animation.easeIn.delay(2))
            }.onAppear(perform: {
                self.show = true
            })
            
            Spacer()
            
        }.font(.title).edgesIgnoringSafeArea(.bottom)
    }
}

struct Ornek2_Delay_Animation2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2_Delay_Animation2()
    }
}
