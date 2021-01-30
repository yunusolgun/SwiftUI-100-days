//
//  SignUp.swift
//  Day94-Uygulama1
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct SignUp: View {
    @State var username = ""
    @State var password = ""
    var social = ["twitter","facebook","google"]
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Hesap Oluştur").font(.title).fontWeight(.bold)
                Spacer()
            }.padding(.horizontal,25)
            .padding(.top,30)
            
            VStack(alignment: .leading, spacing: 15){
                Text("Kullanıcı adı").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                TextField("Email adresi", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                
                Text("Parola").font(.caption).fontWeight(.bold).foregroundColor(.gray)
                SecureField("Parolanız", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: -5)
                
            }.padding(.horizontal,25)
            .padding(.top,25)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Kaydol").font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 50)
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

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
