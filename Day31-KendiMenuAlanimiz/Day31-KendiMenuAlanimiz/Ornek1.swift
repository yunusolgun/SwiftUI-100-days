//
//  Ornek1.swift
//  Day31-KendiMenuAlanimiz
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var gorunsunPopup = false
    @State private var txtKullaniciAdi = ""
    @State private var txtParola = ""
    @State private var girisBasarili = false
    
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                Text("Custom Popup Örnek - 1").font(.largeTitle)
                Text("Giriş").font(.title).foregroundColor(.gray)
                Text("ZStack ve bir değişkeni kullanarak kendi menü alanlarınızı oluşturabilirisiniz").frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white).font(.title)
                
                VStack(spacing:10) {
                    HStack {
                        Text("Kullanıcı Adınız: ")
                        TextField("kullanıcı adınız...", text: $txtKullaniciAdi).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("Parolanız: ")
                        TextField("parolanız...", text: $txtParola).textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    
                    Button(action: {
                        self.gorunsunPopup = true
                        if self.txtKullaniciAdi == "Deneme" && self.txtParola == "123456" {
                            self.girisBasarili = true
                        } else {
                            self.girisBasarili = false
                        }
                    }, label: {
                        Text("Giriş yap")
                    })
                    
                }.padding()
                
                Spacer()
                
            }
            
            if self.gorunsunPopup {
                ZStack {
                    Color.black.opacity(0.7).edgesIgnoringSafeArea(.vertical)
                    VStack(spacing:20){
                        Text(self.girisBasarili ? "BAŞARILI": "HATA!!!").bold().padding().frame(maxWidth:.infinity).background(Color.orange).foregroundColor(.white)
                        
                        Spacer()
                        
                        Text(self.girisBasarili ? "Giriş Başarılı":"Başarısız giriş denemesi").foregroundColor(self.girisBasarili ? .green: .red).bold()
                        
                        Spacer()
                        
                        Button(action: {
                            self.gorunsunPopup = false
                        }) {
                            Text("Kapat")
                        }.padding(.bottom,20)
                        
                    }.frame(width: 300, height: 200).background(Color.white).cornerRadius(20).shadow(radius: 20)
                }
            }
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
