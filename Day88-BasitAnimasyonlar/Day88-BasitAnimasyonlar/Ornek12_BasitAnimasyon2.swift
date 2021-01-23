//
//  Ornek12_BasitAnimasyon2.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek12_BasitAnimasyon2: View {
    @State private var change = false
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Animasyon Soru 2").font(.largeTitle)
                Spacer()
                
                Text("Already have an account").font(.title)
                
                Button(action: {
                    self.change.toggle()
                }, label: {
                    Text("Login Now!").foregroundColor(.blue).padding()
                })
                
                Image(systemName: "lock.shield").font(.title).padding()
                
                VStack(spacing:20) {
                    TextField("Username", text: $userName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                }.padding(.horizontal)
                .foregroundColor(.black)
                .offset(x: change ? 0 : -500)
                .animation(.default)
                
                
                Spacer()
                
            }
            
            
            
            
        }
        .foregroundColor(.white)
    }
}

struct Ornek12_BasitAnimasyon2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek12_BasitAnimasyon2()
    }
}
