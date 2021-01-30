//
//  Ornek2_AnyTransitions.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 28.01.2021.
//

import SwiftUI

struct Ornek2_AnyTransitions: View {
    @State private var showLogin = false
    @State private var userName = ""
    @State private var password = ""
    let showLoginDuraton: Double = 0.7
    let delay = 0.5
    
    var body: some View {
        ZStack {
            Color("Dark").edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("Transitions").font(Font.custom("DIN Condensed Bold", size: 70))
                Text("Slide").foregroundColor(.gray)
                Spacer()
                
                if showLogin {
                    VStack(spacing:30) {
                        Image(systemName: "lock.shield")
                            .font(.system(size: 70))
                            .padding()
                            .foregroundColor(Color("Gold"))
                            .animation(Animation.easeIn(duration: showLoginDuraton).delay(delay))
                        
                        
                        TextField("Kullanici Adı", text: self.$userName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .animation(Animation.easeIn(duration: showLoginDuraton).delay(delay + 0.3))
                        
                        
                        SecureField("Password", text: self.$password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .animation(Animation.easeIn(duration: showLoginDuraton).delay(delay + 0.5))
                        
                        
                        Button("Giriş Yap", action: { })
                            .animation(Animation.easeIn(duration: showLoginDuraton).delay(delay + 0.7))
                    }.padding(.horizontal)
                    .transition(.slide)
                }
                Spacer()
                Spacer()
                
                
                
            }.foregroundColor(Color("Accent")).font(.title)
            .onAppear(perform: {
                self.showLogin = true
            })
        }
    }
}

struct Ornek2_AnyTransitions_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2_AnyTransitions()
    }
}
