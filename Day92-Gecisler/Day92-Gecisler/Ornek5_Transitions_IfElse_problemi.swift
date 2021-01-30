//
//  Ornek5_Transitions_IfElse_problemi.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct Ornek5_Transitions_IfElse_problemi: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("Dark").edgesIgnoringSafeArea(.all)
            
            VStack(spacing:30) {
                Text("Transitions").foregroundColor(.white).font(.largeTitle)
                Text("If Else Problemi ve Çözümü").foregroundColor(.gray).font(.title)
                
                Text("Şimdiye kadar yaptığımız geçişlerde sadece bir nesnenin görünüp görünmeyeceğini kontrol ediyorduk. Eğer değişken değeri true olursa gösteriyorduk fakat false olursa göstermiyorduk. Peki değişkenin değerine göre 2 view arasında geçiş yapmak istersek?").padding().frame(maxWidth:.infinity).background(Color.orange)
                
                Button("Geçiş yap") { self.change.toggle() }.font(.title).padding(.bottom,12)
                
                if change {
                    Image("cartman").transition(.move(edge: .leading))
                        .animation(.default)
                }
                
                if change == false
                {
                    Image("stan").transition(.move(edge: .trailing))
                        .animation(.default)
                }
                
                Spacer()
                
            }
            
        }
    }
}

struct Ornek5_Transitions_IfElse_problemi_Previews: PreviewProvider {
    static var previews: some View {
        Ornek5_Transitions_IfElse_problemi()
    }
}
