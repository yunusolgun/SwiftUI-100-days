//
//  Ornek3_GecisleriBirlestirme.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct Ornek3_GecisleriBirlestirme: View {
    @State private var change = false
    var body: some View {
        ZStack {
            Color("Dark").edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("Transitions").foregroundColor(.white).font(.largeTitle)
                Text("Geçişleri Birleştirme").foregroundColor(.gray)
                
                Button("Change") {
                    withAnimation {
                        self.change.toggle()
                    }
                }
                
                Spacer()
                
                
                if change {
                    Image("cartman").transition(AnyTransition.slide.combined(with: .opacity))
                }
                
                Spacer()
                
                
            }.font(.title)
            
            
        }
    }
}

struct Ornek3_GecisleriBirlestirme_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3_GecisleriBirlestirme()
    }
}
