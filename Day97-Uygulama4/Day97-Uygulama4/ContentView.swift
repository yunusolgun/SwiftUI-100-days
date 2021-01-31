//
//  ContentView.swift
//  Day97-Uygulama4
//
//  Created by yunus olgun on 31.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Araclar : Identifiable {
    var id: Int
    var goruntuAdi: String
    var aracAdi: String
    var offset: CGFloat
    var sira: Int
}

struct Home: View {
    @State var suruklendi = 0
    @Namespace var name
    @State var seciliKart : Araclar = Araclar(id: 0, goruntuAdi: "sketch", aracAdi: "Sketch", offset: 0, sira: 1)
    @State var goster = false
    @State var tasarimAraclari = [
        Araclar(id: 0, goruntuAdi: "sketch", aracAdi: "Sketch", offset: 0, sira: 1),
        Araclar(id: 1, goruntuAdi: "figma", aracAdi: "Figma", offset: 0, sira: 2),
        Araclar(id: 2, goruntuAdi: "xd", aracAdi: "XD", offset: 0, sira: 3),
        Araclar(id: 3, goruntuAdi: "ilustrator", aracAdi: "Ilustrator", offset: 0, sira: 4),
        Araclar(id: 4, goruntuAdi: "ps", aracAdi: "Photoshop", offset: 0, sira: 5),
        Araclar(id: 5, goruntuAdi: "invision", aracAdi: "Invision", offset: 0, sira: 6),
        Araclar(id: 6, goruntuAdi: "affinity", aracAdi: "Affinity Photos", offset: 0, sira: 7)
    ]
    var body: some View {
        ZStack {
            
            VStack {
                
                HStack {
                    
                    VStack(alignment: .leading, spacing: 12){
                        Text("Ürünler").font(.system(size: 45))
                            .fontWeight(.bold).foregroundColor(.white)
                        
                        HStack(spacing:15) {
                            Text("Tasarım Araçları")
                                .font(.system(size: 30)).fontWeight(.bold)
                                .foregroundColor(Color.white.opacity(0.7))
                            
                            Button(action: {}, label: {
                                Image(systemName: "chevron.down").font(.system(size: 30)).foregroundColor(Color("turuncu"))
                            })
                        }//HStack bitişi
                        
                    }//VStack bitişi
                    
                    Spacer(minLength: 0)

                    
                }//HStack bitişi
                .padding()
                
                GeometryReader { gr in
                    ForEach(tasarimAraclari.reversed()) { arac in
                        KartView(arac: arac, gr: gr, suruklendi: $suruklendi, goster: $goster, secildi: $seciliKart, name: name)
                            .offset(x:arac.offset)
                            .rotationEffect(.init(degrees: aciBul(offset: arac.offset)))
                            .gesture(DragGesture().onChanged({ value in
                                withAnimation {
                                    if value.translation.width > 0 {
                                        tasarimAraclari[arac.id].offset = value.translation.width
                                    }
                                }
                            }).onEnded({ value in
                                withAnimation {
                                    if value.translation.width > 150 {
                                        tasarimAraclari[arac.id].offset = 1000
                                        suruklendi = arac.id + 1
                                        kartDuzelt(id: arac.id)
                                    } else {
                                        tasarimAraclari[arac.id].offset = 0
                                    }
                                }
                            }))
                    }
                }.offset(y: -30)
                
            }//VStack bitişi
            
            if goster {
                DetayView(arac: seciliKart, goster: $goster, name: name)
            }
            
        }//ZStack bitişi
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("ust"), Color("merkez") ,Color("alt")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all).opacity(goster ? 0 : 1)
        )
    }
    
    func kartDuzelt(id: Int) {
        var gecerliKart = tasarimAraclari[id]
        gecerliKart.id = tasarimAraclari.count
        tasarimAraclari.append(gecerliKart)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            withAnimation {
                tasarimAraclari[tasarimAraclari.count - 1].offset = 0
            }
        }
    }
    
    func aciBul(offset: CGFloat) -> Double {
        let deger = offset / 150
        let aci: CGFloat = 5
        let derece = Double(deger * aci)
        return derece
    }
    
}


struct KartView: View {
    var arac: Araclar
    var gr: GeometryProxy
    
    @Binding var suruklendi: Int
    @Binding var goster: Bool
    @Binding var secildi: Araclar
    var name: Namespace.ID
    
    var body: some View {
        VStack {
            
            Spacer(minLength: 0)
            
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
                VStack(alignment: .leading, spacing: 12){
                    Image(arac.goruntuAdi).resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top)
                        .padding(.horizontal,25)
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing:12) {
                            Text(arac.aracAdi).font(.system(size: 40)).fontWeight(.bold)
                            Text("Tasarım Aracı").font(.system(size: 20)).foregroundColor(Color.black)
                            Button(action: {
                                withAnimation(.spring()) {
                                    secildi = arac
                                    goster.toggle()
                                }
                            }, label: {
                                Text("Daha fazla bilgi > ").font(.system(size: 20)).fontWeight(.bold).foregroundColor(Color("turuncu"))
                            }).padding(.top)
                        }//VStack bitişi
                        
                    }//HStack bitişi
                    .padding(.horizontal,20).padding(.bottom,20).padding(.top,25)
                    
                }//VStack bitişi
                
                HStack {
                    Text("#").font(.system(size: 60)).fontWeight(.bold)
                        .foregroundColor(Color.gray.opacity(0.6))
                    Text("\(arac.sira)").font(.system(size: UIScreen.main.bounds.height < 750 ? 100: 120))
                        .fontWeight(.bold).foregroundColor(Color.gray.opacity(0.6))
                }.offset(x:-15, y:UIScreen.main.bounds.height < 750 ? 5 : 25)

            }.frame(height:gr.frame(in: .global).height - 120)
            .padding()
            .background(Color.white)
            .cornerRadius(25)
            .padding(.horizontal, 30 + (CGFloat(arac.id - suruklendi) * 20))
            .offset(y: arac.id - suruklendi <= 2 ? CGFloat(arac.id - suruklendi) * 25 : 50)
            .shadow(color: Color.black.opacity(0.12), radius: 5, x: 0, y: 5)
            
            
            Spacer(minLength: 0)
            
        }.contentShape(Rectangle())
    }
}


struct DetayView: View {
    var arac: Araclar
    @Binding var goster: Bool
    
    var name: Namespace.ID
    
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12){
                
                Button(action: {
                    withAnimation(.spring()) {
                        goster.toggle()
                    }
                }, label: {
                    Image(systemName: "chevron.left").font(.system(size: 30, weight: .bold)).foregroundColor(.blue)
                })
                
                Spacer()
                
                Image(arac.goruntuAdi).matchedGeometryEffect(id: arac.goruntuAdi, in: name)
                
            }.padding(.leading,20).padding([.top,.bottom,.trailing])
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    HStack {
                        VStack(alignment: .leading, spacing: 12) {
                            Text(arac.aracAdi).font(.system(size: 45, weight: .bold)).foregroundColor(Color.black)
                            
                            Text("Tasarım Araçları").font(.system(size:30))
                                .foregroundColor(.black)
                            
                            Text("Ücretsiz").font(.title).fontWeight(.bold).foregroundColor(Color.blue).padding(.top)
                        }//VStack bitişi
                        
                        Spacer(minLength: 0)
                        HStack {
                            Text("#").font(.system(size: 60, weight: .bold))
                            Text("\(arac.sira)").font(.system(size: UIScreen.main.bounds.height < 750 ? 150: 180, weight: .bold))
                        }.foregroundColor(Color.gray.opacity(0.7))
                        
                    }.padding(.vertical) // HStack bitişi
                    
                    Text("\(arac.aracAdi) bla bla bla blabla bla bla blabla bla bla  blabla bla bla blabla bla bla blabla bla bla blabla bla bla  blabla bla bla blabla bla bla bla").font(.system(size: 22))
                        .foregroundColor(Color.black.opacity(0.7))
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                    
                    HStack {
                        Button(action: {}, label: {
                            Text("Web Adresi").fontWeight(.bold).foregroundColor(Color.white).padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 120)
                                .background(Color("turuncu"))
                                .clipShape(Capsule())
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "suit.heart.fill")
                                .font(.title).foregroundColor(Color("turuncu"))
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                                .shadow(radius: 3)
                        })
                        
                    }.padding(.top,25).padding(.bottom)
                    
                }.padding(.horizontal,20) // VStack bitşiş
                
            }//ScrollView bitişi
            
        }//VStack bitişi
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
