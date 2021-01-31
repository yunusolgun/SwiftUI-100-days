//
//  ContentView.swift
//  Day96-Uygulama3
//
//  Created by yunus olgun on 31.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Home: View {
    @State var sekmeler = ["Doğa","Hayvanlar","Balıklar","Çiçekler"]
    @State var arananIfade = ""
    @State var secilenSekme = "Doğa"
    @State var secilenGoruntuler: [[String]] = [["d11","d12"],["d21","d22"],["d31","d32"]]
    
    @State var dogaGoruntuleri: [[String]] = [["d11","d12"],["d21","d22"],["d31","d32"]]
    @State var balikGoruntuleri: [[String]] = [["b11","b12"],["b21","b22"],["b31","b32"]]
    @State var cicekGoruntuleri: [[String]] = [["c11","c12"],["c21","c22"],["c31","c32"]]
    @State var hayvanGoruntuleri: [[String]] = [["h11","h12"],["h21","h22"],["h31","h32"]]
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: {}, label: {
                    Image("menu").renderingMode(.original)
                    Spacer()
                })
            }.padding()
            .background(Color.white).overlay(Image("logo").renderingMode(.original))
            
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack {
                        Image("ara").renderingMode(.original)
                        TextField("Ara",text: self.$arananIfade)
                    }.padding(12).background(Color("Renk1")).clipShape(Capsule())
                    
                    ZStack(alignment: .bottomTrailing) {
                        Image("anaGoruntu").resizable().frame(height:350)
                        HStack(spacing:15) {
                            Button(action: {}) { Image("ekle").renderingMode(.original) }
                            Button(action: {}) { Image("begeni").renderingMode(.original) }
                            Button(action: {}) { Image("indir").renderingMode(.original) }
                        }.padding()
                    }
                    
                    Text("Trend Olanlar").font(.title).padding(.top)
                    
                    HStack(spacing:15) {
                        ForEach(sekmeler, id:\.self) { s in
                            Button(action: {
                                self.secilenSekme = s
                                switch s {
                                case "Doğa": self.secilenGoruntuler = self.dogaGoruntuleri
                                case "Hayvanlar": self.secilenGoruntuler = self.hayvanGoruntuleri
                                case "Çiçekler": self.secilenGoruntuler = self.cicekGoruntuleri
                                case "Balıklar": self.secilenGoruntuler = self.balikGoruntuleri
                                default: self.secilenGoruntuler = self.dogaGoruntuleri
                                }
                                
                            }, label: {
                                VStack {
                                    Text(s).foregroundColor(.black)
                                    Capsule().fill(self.secilenSekme == s ? Color.black: Color.clear).frame(height:6)
                                }
                            })
                        }
                    }.padding(.top)
                    
                    
                    VStack(spacing:18) {
                        
                        ForEach(secilenGoruntuler, id:\.self) { s in
                            HStack {
                                ForEach(s, id:\.self) { goruntununAdi in
                                    Image(goruntununAdi)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width / 2 - 20, height:180)
                                        .cornerRadius(15)
                                        .contextMenu(ContextMenu(menuItems: {
                                            Button(action: {
                                                UIImageWriteToSavedPhotosAlbum(UIImage(named: goruntununAdi)!, nil, nil, nil)
                                            }, label: {
                                                HStack {
                                                    Text("Kaydet")
                                                    Image(systemName: "arrow.down")
                                                        .resizable()
                                                        .frame(width:15, height:15)
                                                }
                                                
                                            })
                                            
                                        }))
                                }
                            }
                        }
                        
                    }.padding(.top)
                    
                }.padding()
            }
            
            
        }.background(Color("ArkaPlan").edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
