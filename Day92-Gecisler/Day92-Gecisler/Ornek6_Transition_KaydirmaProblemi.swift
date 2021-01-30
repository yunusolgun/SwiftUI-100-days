//
//  Ornek6_Transition_KaydirmaProblemi.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct Ornek6_Transition_KaydirmaProblemi: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("Dark").edgesIgnoringSafeArea(.all)
            
            VStack(spacing:30) {
                Text("Transitions").foregroundColor(.white).font(.largeTitle)
                Text("Kaydırma Problemi").foregroundColor(.gray).font(.title)
                
                Text("Transitions kavramı, viewlerin ekran hiyerarşişinde eklenip çıkarılmasını sağlayan bir durumdur. Ekleme ve çıkarma işlemi viewların konumlarını tekrardan ayarlar").padding().frame(maxWidth:.infinity).background(Color.yellow)
                
                Button("Ekle/Çıkar") {
                    self.change.toggle()
                }.font(.title)
                
                if change {
                    Image("cartman").transition(.slide).animation(.default)
                } else {
                    Image("cartman").hidden()
                }
                
                Text("Bir view eklendiğinde buraya neler olduğuna dikkat edin!").padding().frame(maxWidth:.infinity).background(Color.yellow)
                
                
         
                
            }
            
        }
        
        
    }
}

struct Ornek6_Transition_KaydirmaProblemi_Previews: PreviewProvider {
    static var previews: some View {
        Ornek6_Transition_KaydirmaProblemi()
    }
}
