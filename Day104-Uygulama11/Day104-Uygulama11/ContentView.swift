//
//  ContentView.swift
//  Day104-Uygulama11
//
//  Created by yunus olgun on 27.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}


struct PastaDilimi: Identifiable {
    var id: Int
    var yuzde: CGFloat
    var adi: String
    var renk: Color
}

var grafikVerileri = [
    PastaDilimi(id: 0, yuzde: 10, adi: "WhatsApp", renk: .red),
    PastaDilimi(id: 1, yuzde: 15, adi: "Safari", renk: .yellow),
    PastaDilimi(id: 2, yuzde: 20, adi: "Yandex", renk: .purple),
    PastaDilimi(id: 3, yuzde: 35, adi: "Youtube", renk: .orange),
    PastaDilimi(id: 4, yuzde: 20, adi: "Instagram", renk: .blue)
]


struct Home: View {
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    
                    Button(action: {}, label: {
                        Image(systemName: "line.horizontal.3").resizable()
                            .frame(width:20, height:15).foregroundColor(.black)
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "bell.fill").foregroundColor(.black)
                    })
                    
                    
                } // HStack bitişi
                
                Text("Kullanım Oranları").fontWeight(.bold)
                
                
            }// ZStack bitişi
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding()
            .overlay(Rectangle().stroke(Color.black.opacity(0.05), lineWidth: 2))

            //Grafik pasta dilimi
            GeometryReader { gr in
                
                ZStack {
                    ForEach(0..<grafikVerileri.count) { i in
                        SekilOlustur(center: CGPoint(x: gr.frame(in: .global).width/2, y: gr.frame(in: .global).height/2), index: i)
                    }
                }
                
            }
            .frame(height:360)
            .padding(.top,20)
            .clipShape(Circle())
            .shadow(radius: 8 )
            
            
            VStack {
                ForEach(grafikVerileri) { veri in
                    HStack {
                        Text(veri.adi).frame(width:100)
                        GeometryReader { gr in
                            HStack {
                                Spacer(minLength: 0)
                                Rectangle().fill(veri.renk)
                                    .frame(width: self.grafikCubukGenislik(genislik: gr.frame(in: .global).width, deger: veri.yuzde), height:10)
                                
                                Text(String(format: "%.f",veri.yuzde)).bold().padding(.leading,20)
                                
                            }
                        }
                    }.padding(.top,18)
                }
                
            }.padding()
            
            
            Spacer()
            
            
        }//VStack bitişi
        .edgesIgnoringSafeArea(.top)
        

        
        
    }
    
    
            func grafikCubukGenislik(genislik: CGFloat, deger: CGFloat) -> CGFloat {
                let yuzde = deger / 100
                return yuzde * genislik
            }
}


struct SekilOlustur: View {
    var center: CGPoint
    var index: Int
    
    func baslangicAcisi() -> Double {
        if index == 0 {
            return 0
        }
        
        var deger: Double = 0
        
        for i in 0...index-1 {
            deger += Double(grafikVerileri[i].yuzde / 100) * 360
        }
        
        return deger
    }
    
    
    func bitisAcisi() -> Double {
        var deger: Double = 0
        
        for i in 0...index {
            deger += Double(grafikVerileri[i].yuzde / 100) * 360
        }
        
        return deger
    }
    
    var body: some View {
        Path { path in
            path.move(to: self.center)
            path.addArc(center: self.center, radius: 180, startAngle: .init(degrees: baslangicAcisi()), endAngle: .init(degrees: bitisAcisi()), clockwise: false)
        }.fill(grafikVerileri[index].renk)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
