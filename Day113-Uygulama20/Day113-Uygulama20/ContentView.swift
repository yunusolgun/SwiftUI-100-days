//
//  ContentView.swift
//  Day113-Uygulama20
//
//  Created by yunus olgun on 10.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}


struct Tecrube: Identifiable {
    var id: Int
    var firma: String
    var gorev: String
    var sure: String
}

var tecrubeler = [
    Tecrube(id: 0, firma: "Twitter", gorev: "UX designer", sure: "1 yıl"),
    Tecrube(id: 1, firma: "Apple", gorev: "UI designer", sure: "2 yıl"),
    Tecrube(id: 2, firma: "Pinterest", gorev: "UI designer", sure: "1 yıl"),
    Tecrube(id: 3, firma: "Facebook", gorev: "UI/UX designer", sure: "1.5 yıl")
]


struct Home: View {
    @State var index = 1
    @State var sutunlar = Array(repeating: GridItem(.flexible()), count: 2)
    var body: some View {
        
        VStack {
            
            HStack(spacing:15) {
                Button(action: {}, label: {
                    Image(systemName: "chevron.left").font(.system(size: 22)).foregroundColor(.black)
                })
                
                Text("Profil").font(.title)
                
                Spacer()
                
                Button(action: {}, label: {
                    Text("Ekle").foregroundColor(.white).padding(.vertical).padding(.horizontal,25).background(Color("Renk1")).cornerRadius(10)
                })
                
            }.padding()
            
            
            
            HStack{
                VStack(spacing:0) {
                    Rectangle().fill(Color("Renk1")).frame(width:80, height:3).zIndex(1)
                    
                    Image("profil").resizable().frame(width: 100, height: 100).padding(.top,6).padding(.bottom,4).padding(.horizontal,8).background(Color("Renk2")).cornerRadius(10).shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8).shadow(color: Color.white.opacity(0.5), radius: 5, x: -8, y: -8)

                }
                
                VStack(alignment: .leading, spacing: 12){
                    Text("Gizem").font(.title).foregroundColor(Color.black.opacity(0.8))
                    Text("IOS Developer").font(.title).foregroundColor(Color.black.opacity(0.8))
                    Text("gizemios@gmail.com").foregroundColor(Color.black.opacity(0.7))
                }.padding(.leading,20)
                
            }.padding(.horizontal,20).padding(.top,10)
            
            
            HStack {
                Button(action: {
                    self.index = 1
                }, label: {
                    Text("Tecrübe").foregroundColor(self.index == 1 ? .white : .gray).padding(.vertical,10).padding(.horizontal).background(self.index == 1 ? Color("Renk1"): Color.clear).cornerRadius(10)
                })
                
                
                Spacer()
                
                
                Button(action: {
                    self.index = 2
                }, label: {
                    Text("Puan").foregroundColor(self.index == 2 ? .white : .gray).padding(.vertical,10).padding(.horizontal).background(self.index == 2 ? Color("Renk1"): Color.clear).cornerRadius(10)
                })
                
                
                Spacer()
                
                
                Button(action: {
                    self.index = 3
                }, label: {
                    Text("Referanslar").foregroundColor(self.index == 3 ? .white : .gray).padding(.vertical,10).padding(.horizontal).background(self.index == 3 ? Color("Renk1"): Color.clear).cornerRadius(10)
                })
                
                
                
                
            }.padding(.horizontal,8).padding(.vertical,5).background(Color("Renk2")).cornerRadius(8).shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8).shadow(color: Color.white.opacity(0.5), radius: 5, x: -8, y: -8)
            .padding(.horizontal).padding(.top,25)

            
            LazyVGrid(columns: sutunlar, spacing:20) {
                ForEach(tecrubeler) { t in
                    
                    VStack(spacing:12) {
                        Image(t.firma).resizable().frame(width:80, height:80)
                        Text(t.firma).font(.title).padding(.top,10)
                        Text(t.gorev).foregroundColor(Color("Renk1"))
                        Text(t.sure).font(.caption).foregroundColor(.gray)
                    }.padding(.vertical)
                    .frame(width: (UIScreen.main.bounds.width - 60) / 2)
                    .background(Color("Renk2"))
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 8, y: 8).shadow(color: Color.white.opacity(0.5), radius: 5, x: -8, y: -8)
                    
                }
            }.padding(.top,20)
            
            Spacer()
            
            
            
            
            
        }.background(Color("Renk2").edgesIgnoringSafeArea(.all))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
