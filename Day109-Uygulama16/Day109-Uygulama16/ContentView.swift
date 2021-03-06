//
//  ContentView.swift
//  Day109-Uygulama16
//
//  Created by yunus olgun on 6.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Home: View {
    @State var secilenGun = 0
    var renkler = [Color("Renk1"), Color("Renk2")]
    var sutunlar = Array(repeating: GridItem(.flexible(),spacing: 20), count: 2)
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                
                HStack {
                    Text("Merhaba Ahmet").font(.title).fontWeight(.bold).foregroundColor(.white)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image("menu").renderingMode(.template).foregroundColor(.white)
                    })
                }.padding()
                
                
                VStack(alignment: .leading, spacing: 25){
                    Text("Günlük Antrenman (Saat)").font(.system(size: 22)).fontWeight(.bold).foregroundColor(.white)
                    
                    
                    HStack(spacing:15) {
                        ForEach(antVerileri) { ant in
                            VStack {
                                VStack {
                                    if secilenGun == ant.id {
                                        Text(saatGetir(deger: ant.sureDakika)).foregroundColor(Color("Renk1")).padding(.bottom,5)
                                            .frame(height: yukseklikBul(deger: ant.sureDakika))
                                            
                                    }
                                    
                                    RoundedShape().fill(LinearGradient(gradient: Gradient(colors: secilenGun == ant.id ? renkler : [Color.white.opacity(0.06)]), startPoint: .top, endPoint: .bottom))
                                    
                                }.frame(height: 220)
                                
                                Text(ant.gun).font(.caption).foregroundColor(.white)
                            }
                        }
                    }//HStack bitişi
                    
                    
                    
                }.padding().background(Color.white.opacity(0.06)).cornerRadius(10).padding()
                
                
                HStack{
                    Text("İstatistikler").font(.title).fontWeight(.bold).foregroundColor(.white)
                    Spacer()
                }.padding()
                
                
                LazyVGrid(columns: sutunlar, spacing: 30) {
                    ForEach(istVerileri) { veri in
                        VStack(spacing:32) {
                            HStack {
                                Text(veri.baslik).font(.system(size: 22)).fontWeight(.bold).foregroundColor(.white)
                                Spacer()
                            }
                            
                            ZStack {
                                Circle().trim(from: 0, to: 1).stroke(veri.renk.opacity(0.05), lineWidth: 10).frame(width: (UIScreen.main.bounds.width - 150) / 2, height: (UIScreen.main.bounds.width - 150) / 2)
                                
                                
                                Circle().trim(from: 0, to: (veri.veri / veri.hedef)).stroke(veri.renk, style: StrokeStyle(lineWidth:10, lineCap:.round)).frame(width: (UIScreen.main.bounds.width - 150) / 2, height: (UIScreen.main.bounds.width - 150) / 2)
                                
                                
                                Text("% " + yuzdeBul(veri: veri.veri, hedef: veri.hedef)).font(.system(size: 22)).foregroundColor(veri.renk).fontWeight(.bold).rotationEffect(.init(degrees: 90))
                                
                            }.rotationEffect(.init(degrees: -90))
                            
                            Text(ondalikBul(deger: veri.veri) + " " + birimBul(deger: veri.baslik)).font(.system(size:22)).fontWeight(.bold)
                            
                        }.padding()
                        .background(Color.white.opacity(0.09)).cornerRadius(15)
                        .shadow(color: Color.white.opacity(0.2), radius: 10, x: 0, y: 0)
                    }
                }.foregroundColor(.white)
                .padding()
                
                
                
            }// VStack bitişi
        }.background(Color.black.edgesIgnoringSafeArea(.all))
    }
    
    func birimBul(deger: String) -> String {
        switch deger {
        case "Su": return "L"
        case "Uyku": return "Saat"
        case "Koşu": return "Km"
        case "Bisiklet": return "Km"
        case "Adım": return "Tane"
        case "Yakılan Kalori": return "Kcal"
        default: return "L"
        }
    }
    
    func ondalikBul(deger: CGFloat) -> String {
        let format = NumberFormatter()
        format.numberStyle = .decimal
        return format.string(from: NSNumber.init(value: Float(deger)))!
    }
    
    func yuzdeBul(veri: CGFloat, hedef:CGFloat) -> String {
        let yuzde = (veri / hedef) * 100
        return String(format: "%.1f", yuzde)
    }
    
    func saatGetir(deger: CGFloat) -> String {
        let saat = deger / 60
        return String(format: "%.2f", saat)
    }
    
    func yukseklikBul(deger: CGFloat) -> CGFloat {
        let saat = CGFloat( deger / 1440) * 400
        return saat
    }
    
    
}

struct RoundedShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 5, height: 5))
        return Path(path.cgPath)
    }
}


struct Gunluk: Identifiable {
    var id: Int
    var gun: String
    var sureDakika: CGFloat
}

var antVerileri = [
    Gunluk(id: 0, gun: "Gün-1", sureDakika: 135),
    Gunluk(id: 1, gun: "Gün-2", sureDakika: 375),
    Gunluk(id: 2, gun: "Gün-3", sureDakika: 320),
    Gunluk(id: 3, gun: "Gün-4", sureDakika: 270),
    Gunluk(id: 4, gun: "Gün-5", sureDakika: 155),
    Gunluk(id: 5, gun: "Gün-6", sureDakika: 190),
    Gunluk(id: 6, gun: "Gün-7", sureDakika: 225),
]


struct Istatistik: Identifiable {
    var id: Int
    var baslik: String
    var veri: CGFloat
    var hedef: CGFloat
    var renk: Color
}

var istVerileri = [
    Istatistik(id: 0, baslik: "Koşu", veri: 9.2, hedef: 15, renk: Color("Kosu")),
    Istatistik(id: 1, baslik: "Su", veri: 4.1, hedef: 5, renk: Color("Su")),
    Istatistik(id: 2, baslik: "Yakılan Kalori", veri: 625, hedef: 1000, renk: Color("Enerji")),
    Istatistik(id: 3, baslik: "Uyku", veri: 9.2, hedef: 10, renk: Color("Uyku")),
    Istatistik(id: 4, baslik: "Bisiklet", veri: 14.6, hedef: 25, renk: Color("Bisiklet")),
    Istatistik(id: 5, baslik: "Adım", veri: 17529, hedef: 20000, renk: Color("Adim"))
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
