//
//  Ornek11_AnimasyonSoru1.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek11_AnimasyonSoru1: View {
    @State private var showLogin = false
    @State private var userName = ""
    @State private var password = ""
    
    let xOffset : CGFloat = -200
    let duration : Double = 0.7
    let delay = 0.5
    
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Soru Çözümü").foregroundColor(Color("Gold")).font(.system(size: 50))
                Text("Oturum açın").foregroundColor(.gray)
                Spacer()
                
                VStack(spacing:30) {
                    Image(systemName: "lock.shield").font(.system(size: 70))
                        .padding(.all,12)
                        .foregroundColor(Color("Gold"))
                        .scaleEffect(showLogin ? 1 :4)
                        .animation(Animation.easeIn(duration: duration/2).delay(delay))
                    
                    TextField("Kullanıcı adı", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .opacity(showLogin ? 1 : 0)
                        .offset(x: showLogin ?  0 : xOffset)
                        .animation(Animation.easeOut(duration: duration).delay(delay + 0.2))
                    
                    
                    SecureField("Parola", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .opacity(showLogin ? 1 : 0)
                        .offset(x: showLogin ?  0 : xOffset)
                        .animation(Animation.easeOut(duration: duration).delay(delay + 0.4))
                    
                    
                    Button("Giriş Yap", action: { })
                        .foregroundColor(Color("Accent"))
                        .opacity(showLogin ? 1 : 0)
                        .offset(x: showLogin ?  0 : xOffset)
                        .animation(Animation.easeOut(duration: duration).delay(delay + 0.6))
                    
                }
                
            }.padding(.top,12).font(.title)
            
            
            
            
        }.padding(.horizontal,12)
        .onAppear(perform: {
            self.showLogin = true
        })
        
        
        
    }
}

struct Ornek11_AnimasyonSoru1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek11_AnimasyonSoru1()
    }
}
