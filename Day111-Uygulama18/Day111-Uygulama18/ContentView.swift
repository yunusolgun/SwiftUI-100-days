//
//  ContentView.swift
//  Day111-Uygulama18
//
//  Created by yunus olgun on 8.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Renk1"), Color("Renk2"), Color("Renk3")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            if UIScreen.main.bounds.height > 800 {
                Home()
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    Home()
                }
            }
        }
    }
}

struct Home: View {
    @State var index = 0
    var body: some View {
        VStack {
            Image("logo").resizable().frame(width: 200, height: 180)
            
            HStack {
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                        self.index = 0
                    }
                }, label: {
                    Text("Hesabım var").foregroundColor(self.index == 0 ? .black: .white).fontWeight(.bold).padding(.vertical,10).frame(width: (UIScreen.main.bounds.width - 50) / 2).background(self.index == 0 ? Color.white : Color.clear).clipShape(Capsule())
                })
                
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)) {
                        self.index = 1
                    }
                }, label: {
                    Text("Kayıt Ol").foregroundColor(self.index == 1 ? .black: .white).fontWeight(.bold).padding(.vertical,10).frame(width: (UIScreen.main.bounds.width - 50) / 2).background(self.index == 1 ? Color.white : Color.clear).clipShape(Capsule())
                })
                
            }.background(Color.black.opacity(0.1)).clipShape(Capsule()).padding(.top,25)
            
            
            if self.index == 0 {
                //oturum açma ekranı
                Login()
            } else {
                //kayıt ekranı
                SignUp()
            }
            
            
            if self.index == 0 {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Parolamı unuttum").foregroundColor(.white).padding(.top,20)
                })
            }
            
            HStack(spacing:15) {
                Color.white.opacity(0.7).frame(width:35, height:1)
                Text("veya").fontWeight(.bold).foregroundColor(.white)
                Color.white.opacity(0.7).frame(width:35, height:1)
            }.padding(.top,10)
            
            HStack {
                Button(action: {}, label: {
                    Image("fb").renderingMode(.original).padding()
                }).background(Color.white).clipShape(Circle())
                
                Button(action: {}, label: {
                    Image("google").renderingMode(.original).padding()
                }).background(Color.white).clipShape(Circle())
            }.padding(.top,10)
            
            
        }.padding()
    }
}


struct Login: View {
    @State var mail = ""
    @State var password = ""
    var body: some View {
        VStack {
            VStack {
                HStack(spacing:15) {
                    Image(systemName: "envelope").foregroundColor(.black)
                    TextField("Mail adresinizi girin...", text: self.$mail)
                }.padding(.vertical,20)
                
                Divider()
                
                HStack(spacing:15) {
                    Image(systemName: "lock").foregroundColor(.black)
                    SecureField("Parola", text: self.$password)
                    Image(systemName: "eye").foregroundColor(.black)
                }.padding(.vertical,20)
                
            }.padding(.vertical).padding(.horizontal,20).padding(.bottom,40)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top,25)
            
            Button(action: {}, label: {
                Text("Oturum Aç").foregroundColor(.white).fontWeight(.bold).padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
            }).background(
                LinearGradient(gradient: Gradient(colors: [Color("Renk1"), Color("Renk2"),Color("Renk3")]), startPoint: .leading, endPoint: .trailing)
            ).cornerRadius(8).offset(y: -40).padding(.bottom, -40).shadow(radius: 15)
        }
    }
}


struct SignUp: View {
    @State var mail = ""
    @State var password = ""
    @State var repassword = ""
    
    var body: some View {
        VStack{
            VStack {
                VStack (spacing:15) {
                    HStack(spacing:15) {
                        Image(systemName: "envelope").foregroundColor(.black)
                        TextField("Mail adresinizi girin...", text: self.$mail)
                    }.padding(.vertical,20)
                    
                    Divider()
                    
                    HStack(spacing:15) {
                        Image(systemName: "lock").foregroundColor(.black)
                        SecureField("Parola", text: self.$password)
                        Button(action: {}, label: {
                            Image(systemName: "eye").foregroundColor(.black)
                        })
                    }.padding(.vertical,20)
                    
                    Divider()
                    
                    HStack(spacing:15) {
                        Image(systemName: "lock").foregroundColor(.black)
                        SecureField("Parola tekrar", text: self.$repassword)
                        Button(action: {}, label: {
                            Image(systemName: "eye").foregroundColor(.black)
                        })
                    }.padding(.vertical,20)
                    
                }.padding(.vertical).padding(.horizontal,20).padding(.bottom,40)
                .background(Color.white).cornerRadius(10).padding(.top,25)
                
                Button(action: {}, label: {
                    Text("Kayıt Ol").foregroundColor(.white).fontWeight(.bold).padding(.vertical).frame(width: UIScreen.main.bounds.width - 100)
                }).background(
                    LinearGradient(gradient: Gradient(colors: [Color("Renk1"), Color("Renk2"),Color("Renk3")]), startPoint: .leading, endPoint: .trailing)
                ).cornerRadius(8)
                .offset(y: -40)
                .padding(.bottom, -40)
                .shadow(radius: 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
