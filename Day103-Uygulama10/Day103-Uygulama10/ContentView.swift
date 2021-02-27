//
//  ContentView.swift
//  Day103-Uygulama10
//
//  Created by yunus olgun on 27.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView().navigationBarHidden(true)
        }
        
    }
}

struct Mobilya: Identifiable, Hashable {
    var id: Int
    var goruntu: String
    var baslik: String
    var ucret: String
}

var mobilyalar = [
    [
        Mobilya(id: 0, goruntu: "m11", baslik: "Tahta çerçece", ucret: "1200₺"),
        Mobilya(id: 1, goruntu: "m12", baslik: "Sarı tekli koltuk", ucret: "600₺")
    ],
    [
        Mobilya(id: 2, goruntu: "m21", baslik: "Modern koltuk", ucret: "240₺"),
        Mobilya(id: 3, goruntu: "m22", baslik: "IKEA ingolf", ucret: "1500₺")
    ],
    [
        Mobilya(id: 4, goruntu: "m31", baslik: "Sarı uçak", ucret: "2200₺"),
        Mobilya(id: 5, goruntu: "m32", baslik: "IKEA poang", ucret: "1650₺")
    ]
]



struct Home: View {
    @Environment(\.colorScheme) var sema
    @State var ara = ""
    
    var body: some View {
        VStack {
            ZStack {
                
                HStack(spacing:15) {
                    
                    Button(action: {}, label: {
                        Image("menu")
                    }).foregroundColor(.primary)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image("qr")
                    }).foregroundColor(.primary)
                    
                    
                    Button(action: {
                        //Dark mode - light mode geçişi
                        UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = self.sema == .dark ? .light : .dark
                        
                    }, label: {
                        Image(systemName: self.sema == .dark ? "sun.max.fill" : "moon.fill")
                    }).foregroundColor(.primary)
                    
                } //HStack bitişi
                
                Text("Mobilyalar").font(.title).fontWeight(.bold)
                
                
                
                
                
                
            } //ZStack bitişi
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    
                    HStack(spacing:15) { //ARAMA ALANI
                        TextField("İstediğin ürünü ara", text: $ara)
                        if self.ara != "" {
                            Button(action: {}, label: {
                                Image(systemName: "magnifyingglass").foregroundColor(.primary)
                            })
                        }
                    }//HStack bitişi
                    .padding(.vertical,10).padding(.horizontal).background(Color.primary.opacity(0.06)).cornerRadius(12)
                    
                    HStack {
                        Text("Günün seçilenleri").fontWeight(.bold).font(.title)
                        Spacer()
                    }//HStack bitişi
                    .padding(.top,22)
                    
                    
                    VStack {
                        Image("anaUrun")
                        Text("Tekli koltuk").fontWeight(.bold)
                        Text("1200₺")
                    }.background(Color.primary.opacity(0.06).frame(width: UIScreen.main.bounds.width - 30).cornerRadius(25).padding(.top,95))
                    
                    
                    HStack {
                        Text("Tavsiye edilenler").fontWeight(.bold).font(.title)
                        Spacer()
                    }.padding(.top,30).padding(.bottom,20)
                    
                    
                    //Mobilyaları listeleme
                    ForEach(mobilyalar, id:\.self) { ikiliMobilya in
                        HStack(spacing:15) {
                            ForEach(ikiliMobilya) { m1 in
                                
                                VStack {
                                    Image(m1.goruntu)
                                    Text(m1.baslik).fontWeight(.bold)
                                    Text(m1.ucret).padding(.top,6)
                                }.padding()
                                .background(Color.primary.opacity(0.06))
                                .cornerRadius(10)
                                
                            }
                        }
                    }
                    
                    
                }.padding()
            }//ScrollView bitişi
            
            
        }
    }
}


struct Arama: View {
    var body: some View {
        VStack { Text("ARAMA ALANI").frame(maxWidth:.infinity, maxHeight:.infinity)}
    }
}


struct Sepet: View {
    var body: some View {
        VStack { Text("SEPET ALANI").frame(maxWidth:.infinity, maxHeight:.infinity)}
    }
}


struct Hesap: View {
    var body: some View {
        VStack { Text("HESAP ALANI").frame(maxWidth:.infinity, maxHeight:.infinity)}
    }
}


struct TabView: View {
    @State var index = 0
    @Environment(\.colorScheme) var sema
    var body: some View {
        VStack(spacing:0) {
            
            ZStack{
                Home().opacity(self.index == 0 ? 1 : 0)
                Arama().opacity(self.index == 1 ? 1 : 0)
                Sepet().opacity(self.index == 2 ? 1 : 0)
                Hesap().opacity(self.index == 3 ? 1 : 0)
            }
            
            HStack {
                // 1. buton
                Button(action: { self.index = 0 }, label: {
                    HStack(spacing:6) {
                        Image("ana").renderingMode(.template).foregroundColor(self.index == 0 ? .white : .primary)
                        
                        if self.index == 0 {
                            Text("Ana sayfa").foregroundColor(.white)
                        }
                    }.padding(.vertical,10).padding(.horizontal).background(self.index == 0 ? Color("Renk1") : Color.clear).clipShape(Capsule())
                    
                })
                
                Spacer()
                
                
                
                // 2. buton
                Button(action: { self.index = 1 }, label: {
                    HStack(spacing:6) {
                        Image("ara").renderingMode(.template).foregroundColor(self.index == 1 ? .white : .primary)
                        
                        if self.index == 1 {
                            Text("Ara").foregroundColor(.white)
                        }
                    }.padding(.vertical,10).padding(.horizontal).background(self.index == 1 ? Color("Renk1") : Color.clear).clipShape(Capsule())
                    
                })
                
                Spacer()
                
                
                
                // 3. buton
                Button(action: { self.index = 2 }, label: {
                    HStack(spacing:6) {
                        Image("sepet").renderingMode(.template).foregroundColor(self.index == 2 ? .white : .primary)
                        
                        if self.index == 2 {
                            Text("Sepet").foregroundColor(.white)
                        }
                    }.padding(.vertical,10).padding(.horizontal).background(self.index == 2 ? Color("Renk1") : Color.clear).clipShape(Capsule())
                    
                })
                
                Spacer()
                
                
                
                
                // 4. buton
                Button(action: { self.index = 3 }, label: {
                    HStack(spacing:6) {
                        Image("hesap").renderingMode(.template).foregroundColor(self.index == 3 ? .white : .primary)
                        
                        if self.index == 3 {
                            Text("Hesap").foregroundColor(.white)
                        }
                    }.padding(.vertical,10).padding(.horizontal).background(self.index == 3 ? Color("Renk1") : Color.clear).clipShape(Capsule())
                    
                })
                
                
                
                
            }//HStack bitişi
            .padding(.horizontal,25).padding(.top)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            .background(self.sema == .dark ? Color.black : Color.white)
            //gölge
            .shadow(color: Color.primary.opacity(0.08), radius: 5, x: 5, y: -5)
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
