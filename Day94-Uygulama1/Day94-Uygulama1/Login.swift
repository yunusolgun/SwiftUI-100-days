//
//  Login.swift
//  Day94-Uygulama1
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct Login: View {
    @State private var password = ""
    var social = ["twitter","facebook","google"]
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Tekrar merhaba").fontWeight(.bold)
                    Text("Serhat").font(.title).fontWeight(.bold)
                    Button(action: {}, label: {
                        Text("Bu ben değilim")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Renk1"))
                    })
                }
                
                Spacer(minLength:0)
                Image("KisiProfil1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 85, height: 85)
                    .clipShape(Circle())
                    
                
            } // Hstack bitişi
            .padding(.horizontal,25)
            .padding(.top,30)
            
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Parola").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                SecureField("Parola", text: $password).padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 5)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Parolamı unuttum").font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(Color("Renk1"))
                }).padding(.top,10)
                
            } // VStack parola alanı bitişi
            .padding(.horizontal,25)
            .padding(.top,25)
            
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Oturum aç").font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width:UIScreen.main.bounds.width - 50)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color("Renk1"), Color("Renk2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(10)
                
            }).padding(.horizontal,25)
            .padding(.top,25)
            
            
            
            
            Button(action: {}, label: {
                HStack(spacing:35) {
                    Image(systemName: "faceid").font(.system(size: 26)).foregroundColor(Color("Renk1"))
                    Text("Face ID ile oturum aç").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color("Renk1"))
                    Spacer()
                }.padding()
                .background(RoundedRectangle(cornerRadius: 20).stroke(Color("Renk1"),lineWidth: 1))
            }).padding(.top,35)
            .padding(.horizontal,25)
            
            
            //Sosyal medya butonları
            HStack(spacing:30) {
                ForEach(social, id:\.self) { name in
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(name).renderingMode(.template)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(name == "google" ? "Renk2": "Renk1"))
                    })
                }
            }.padding(.top,25)
            
            
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
