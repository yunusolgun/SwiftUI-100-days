//
//  Ornek2_Delay_Animation.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek2_Delay_Animation: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Delay Animations").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            
            Text("Animasyonları tetikledikten sonra çalışmasını erteleyebilirsiniz")
                .frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.orange)
            
            Text("Animasyonun gerçekleşmesi, ekranın yüklenmesinden 1.5 saniye sonra olacak.")
            
            GeometryReader { geometry in
                
                ZStack {
                    VStack {
                        Text("Merhaba")
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                    }.font(.system(size: 50))
                    
                    HStack(spacing:0) {
                        Rectangle().offset(x: self.change ? -geometry.size.width/2 : 0)
                        Rectangle().offset(x: self.change ? geometry.size.width/2 : 0)
                    }.foregroundColor(.red)
                    .animation(Animation.easeInOut(duration: 1).delay(1.5))
                }
            }
            
            
        }.font(.title)
        .edgesIgnoringSafeArea(.bottom)
        .onAppear(perform: {
            self.change = true
        })
    }
}

struct Ornek2_Delay_Animation_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2_Delay_Animation()
    }
}
