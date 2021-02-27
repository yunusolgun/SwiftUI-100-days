//
//  ContentView.swift
//  Day102-Uygulama9
//
//  Created by yunus olgun on 27.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Hikaye: Identifiable {
    var id: Int
    var goruntu: String
    var konum: CGFloat
    var baslik: String
}


struct Home: View {
    @State var index1 = 0
    @State var index2 = 0
    @State var suruklenenKartSayisi = 0
    @State var hikayeler = [
        Hikaye(id: 0, goruntu: "g1", konum: 0, baslik: "Alemdağ'da var bir yılan"),
        Hikaye(id: 1, goruntu: "g2", konum: 0, baslik: "Parasız yatılı"),
        Hikaye(id: 2, goruntu: "g3", konum: 0, baslik: "Göçmüş kediler bahçesi"),
        Hikaye(id: 3, goruntu: "g4", konum: 0, baslik: "Memleket hikayeleri")
    ]
    
    var body: some View {
        ScrollView {
            HStack {
                Button(action: {}, label: {
                    Image("menu2").renderingMode(.template).foregroundColor(.white)
                })
                Spacer()
                Button(action: {}, label: {
                    Image("menu1").renderingMode(.template).foregroundColor(.white)
                })
            }.padding()
            
            HStack {
                Text("Popüler").font(.system(size: 40, weight: .bold)).foregroundColor(.white)
                Spacer()
                Button(action: {}, label: {
                    Image("menu1").renderingMode(.template).foregroundColor(.white).rotationEffect(.init(degrees: 90))
                })
            }.padding(.horizontal)
            
            HStack {
                Text("Sesli hikayeler")
                    .font(.system(size: 15))
                    .foregroundColor(index1 == 0 ? .white : Color("Renk2").opacity(0.85))
                    .fontWeight(.bold)
                    .padding(.vertical,6)
                    .padding(.horizontal,20)
                    .background(Color("Renk1").opacity(index1 == 0 ? 1 : 0))
                    .clipShape(Capsule())
                    .onTapGesture {
                        index1 = 0
                    }
                
                Text("25+ hikaye")
                    .font(.system(size: 15))
                    .foregroundColor(index1 == 1 ? .white : Color("Renk2").opacity(0.85))
                    .fontWeight(.bold)
                    .padding(.vertical,6)
                    .padding(.horizontal,20)
                    .background(Color("Renk1").opacity(index1 == 1 ? 1 : 0))
                    .clipShape(Capsule())
                    .onTapGesture {
                        index1 = 1
                    }
                
                Spacer()
                
            }.padding(.horizontal).padding(.top,10)
            
            
            //KARTLAR
            
            ZStack {
                
                ForEach(hikayeler.reversed()) { hikaye in
                    HStack {
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                            
                            Image(hikaye.goruntu).resizable().aspectRatio(contentMode: .fill)
                                .frame(width: genislikHesapla(),
                                       height: (UIScreen.main.bounds.height / 1.8) - CGFloat(hikaye.id - suruklenenKartSayisi) * 50
                                )
                                .cornerRadius(15)
                            
                            
                            VStack(alignment: .leading, spacing: 18) {
                                HStack {
                                    Text(hikaye.baslik).font(.title).fontWeight(.bold).foregroundColor(.white)
                                    Spacer()
                                }
                                
                                Button(action: {}, label: {
                                    Text("Şimdi dinle").font(.caption).foregroundColor(.white).padding(.vertical,6).padding(.horizontal,25)
                                        .background(Color("Renk2"))
                                        .clipShape(Capsule())
                                })
                                
                            }.frame(width: genislikHesapla() - 40)
                            .padding(.leading, 20)
                            .padding(.bottom, 20)
                            
                        }//ZStack bitişi
                        .offset(x: hikaye.id - suruklenenKartSayisi <= 2 ? CGFloat(hikaye.id - suruklenenKartSayisi) * 30 : 60)
                        
                        Spacer()
                        
                    }//HStack bitişi
                    .contentShape(Rectangle())
                    .offset(x: hikaye.konum)
                    .gesture(DragGesture().onChanged({ (value) in
                        withAnimation {
                            if value.translation.width < 0 && hikaye.id != hikayeler.last!.id {
                                hikayeler[hikaye.id].konum = value.translation.width
                            }
                        }
                    }).onEnded({ (value) in
                        if value.translation.width < 0 {
                            if -value.translation.width > 180 && hikaye.id != hikayeler.last!.id {
                                hikayeler[hikaye.id].konum = -(genislikHesapla() + 60)
                                suruklenenKartSayisi += 1
                            } else {
                                hikayeler[hikaye.id].konum = 0
                            }
                        } else {
                            if hikaye.id > 0 {
                                if value.translation.width > 180 {
                                    hikayeler[hikaye.id - 1].konum = 0
                                    suruklenenKartSayisi -= 1
                                } else {
                                    hikayeler[hikaye.id - 1].konum = -(genislikHesapla() + 60)
                                }
                            }
                        }
                    }))
                    
                    
                }//ForEach bitişi
                
            }//ZStack bitişi
            .frame(height: UIScreen.main.bounds.height / 1.8)
            .padding(.horizontal, 25)
            .padding(.top,25)
            
            
            
            HStack {
                Text("Favorilerin").font(.system(size: 40, weight: .bold)).foregroundColor(.white)
                Spacer()
                Button(action: {}, label: {
                    Image("menu1").renderingMode(.template).foregroundColor(.white).rotationEffect(.init(degrees: 90))
                })
            }.padding(.horizontal).padding(.top,25)
            
            
            
            HStack{
                Text("Son eklediklerin").font(.system(size: 15))
                    .foregroundColor(index2 == 0 ? .white : Color("Renk2").opacity(0.85))
                    .fontWeight(.bold)
                    .padding(.vertical,6).padding(.horizontal,20)
                    .background(Color("Renk2").opacity(index2 == 0 ? 1 : 0))
                    .clipShape(Capsule())
                    .onTapGesture {
                        index2 = 0
                    }
                
                Text("9+ hikayeler").font(.system(size: 15))
                    .foregroundColor(index2 == 1 ? .white : Color("Renk2").opacity(0.85))
                    .fontWeight(.bold)
                    .padding(.vertical,6).padding(.horizontal,20)
                    .background(Color("Renk2").opacity(index2 == 1 ? 1 : 0))
                    .clipShape(Capsule())
                    .onTapGesture {
                        index2 = 1
                    }
                
                Spacer()
                
            }.padding(.horizontal).padding(.top,10)
            
            
            HStack {
                Image("g1").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width - 80, height:250)
                    .cornerRadius(15)
                
                Spacer()
            }.padding([.horizontal, .bottom]).padding(.top,20)
            
            
        }.background(LinearGradient(gradient: Gradient(colors: [Color("üst"), Color("alt")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
    }
}

func genislikHesapla() -> CGFloat {
    let ekran = UIScreen.main.bounds.width - 50
    let genislik = ekran - (2*30)
    return genislik
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
