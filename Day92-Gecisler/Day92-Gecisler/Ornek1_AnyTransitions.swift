//
//  Ornek1_AnyTransitions.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 28.01.2021.
//

import SwiftUI

struct Ornek1_AnyTransitions: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("Dark").edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("Transitions - Geçişler").font(.largeTitle)
                Text("Giriş").foregroundColor(.gray)
                
                Text("Transitions metodunu kullanarak viewlerin ekrana eklenme ve ekrandan çıkarılma yöntemlerini belirleyebiliriz").layoutPriority(10).padding()
                    .frame(maxWidth:.infinity)
                    .background(Color("Darkest"))
                
                Button("Change") {
//                    self.change.toggle()
                    withAnimation(.easeInOut(duration: 1)) {
                        self.change.toggle()
                    }
                    
                }.foregroundColor(.red)
                
                Spacer()
                
                if change {
                    Image("stan")
//                        .transition(.slide)
//                        .transition(.move(edge: .bottom))
//                        .transition(.offset(x: 200, y: -200))
//                        .animation(.easeInOut(duration: 0.5))
//                        .transition(.opacity)
                        .transition(.scale(scale: 4, anchor: .top))
                }
                
            }.font(.title).foregroundColor(Color("Accent"))
            
            
        }
    }
}

struct Ornek1_AnyTransitions_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1_AnyTransitions()
    }
}
