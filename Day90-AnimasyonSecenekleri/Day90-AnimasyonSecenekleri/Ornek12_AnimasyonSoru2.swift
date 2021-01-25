//
//  Ornek12_AnimasyonSoru2.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek12_AnimasyonSoru2: View {
    @State private var showMenu = false
    @State private var showButtons = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("Soru-2").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Açılır Panel").foregroundColor(.gray).font(.title)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("Brown"))
                    .padding(.horizontal)
                
                
                GeometryReader { gr in
                    HStack(spacing:40) {
                        Spacer()
                        Group {
                            Image(systemName: "pencil")
                            Image(systemName: "scribble")
                            Image(systemName: "lasso")
                            Image(systemName: "scissors")
                        }.opacity(self.showButtons ? 1: 0)
                        
                        Button(action: {
                            withAnimation(Animation.default) {
                                self.showMenu.toggle()
                            }
                            
                            withAnimation(Animation.default.delay(0.3)) {
                                self.showButtons.toggle()
                            }
                            
                        }, label: {
                            Image(systemName: "line.horizontal.3.decrease")
                                .rotationEffect(.degrees(-90))
                        }).offset(x: 10)
                        
                        
                        
                    }.padding(20)
                    .foregroundColor(Color("Accent"))
                    .background(Capsule().fill(Color("Gold")))
                    .font(.largeTitle)
                    .offset(x: self.showMenu ? -26 : -gr.frame(in: .local).width + 50)
                }.frame(height:100)
                
            }
        }
    }
}

struct Ornek12_AnimasyonSoru2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek12_AnimasyonSoru2()
    }
}
