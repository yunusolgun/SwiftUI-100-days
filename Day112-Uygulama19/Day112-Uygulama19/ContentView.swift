//
//  ContentView.swift
//  Day112-Uygulama19
//
//  Created by yunus olgun on 10.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Fitness: Identifiable {
    var id: Int
    var baslik: String
    var goruntu: String
    var veri: String
    var tavsiye: String
}

var gunlukFitVeri = [
    Fitness(id: 0, baslik: "Kalp atış hızı", goruntu: "Kalp", veri: "84 bpm", tavsiye: "80-120\nSağlıklı"),
    Fitness(id: 1, baslik: "Uyku", goruntu: "Uyku", veri: "7s 13dk", tavsiye: "Derin Uyku\n8s 30dk"),
    Fitness(id: 2, baslik: "Yakılan kalori", goruntu: "Enerji", veri: "483 kcal", tavsiye: "Günlük hedef\n900 kcal"),
    Fitness(id: 3, baslik: "Adımlar", goruntu: "Adim", veri: "17.893", tavsiye: "Günlük hedef\n20.000 Adım"),
    Fitness(id: 4, baslik: "Koşu", goruntu: "Kosu", veri: "10.2 km", tavsiye: "Günlük hedef\n15 km"),
    Fitness(id: 5, baslik: "Bisiklet", goruntu: "Bisiklet", veri: "17.4 km", tavsiye: "Günlük hedef\n20 km")
]

var haftalikFitVeri = [
    Fitness(id: 0, baslik: "Kalp atış hızı", goruntu: "Kalp", veri: "84 bpm", tavsiye: "80-120\nSağlıklı"),
    Fitness(id: 1, baslik: "Uyku", goruntu: "Uyku", veri: "40s 42dk", tavsiye: "Derin uyku\n42s 45 dk"),
    Fitness(id: 2, baslik: "Yakılan kalori", goruntu: "Enerji", veri: "4250 kcal", tavsiye: "Haftalık hedef\n4800 kcal"),
    Fitness(id: 3, baslik: "Adımlar", goruntu: "Adim", veri: "84.273", tavsiye: "Haftalık hedef\n90.000 Adım"),
    Fitness(id: 4, baslik: "Koşu", goruntu: "Kosu", veri: "52.4 km", tavsiye: "Haftalık hedef\n70 km"),
    Fitness(id: 5, baslik: "Bisiklet", goruntu: "Bisiklet", veri: "120.3 km", tavsiye: "Haftalık hedef\n125 km")
]


struct Home: View {
    @State var index = 1
    var body: some View {
        VStack {
            
            HStack {
                Text("İSTATİSTİKLER").font(.title).fontWeight(.bold).foregroundColor(Color("Renk1"))
                Spacer()
            }.padding(.horizontal)
            
            
            HStack(spacing:0) {
                Text("Gün").foregroundColor(self.index == 1 ? .white: Color("Renk1").opacity(0.7)).fontWeight(.bold).padding(.vertical,10).padding(.horizontal,35).background(Color("Renk1").opacity(self.index == 1 ? 1: 0)).clipShape(Capsule())
                    .onTapGesture {
                        withAnimation(.default) {
                            self.index = 1
                        }
                    }
                
                Spacer()
                
                Text("Haftalık").foregroundColor(self.index == 2 ? .white: Color("Renk1").opacity(0.7)).fontWeight(.bold).padding(.vertical,10).padding(.horizontal,35).background(Color("Renk1").opacity(self.index == 2 ? 1: 0)).clipShape(Capsule())
                    .onTapGesture {
                        withAnimation(.default) {
                            self.index = 2
                        }
                    }
                
                Spacer()
                
                Text("Aylık").foregroundColor(self.index == 3 ? .white: Color("Renk1").opacity(0.7)).fontWeight(.bold).padding(.vertical,10).padding(.horizontal,35).background(Color("Renk1").opacity(self.index == 3 ? 1: 0)).clipShape(Capsule())
                    .onTapGesture {
                        withAnimation(.default) {
                            self.index = 3
                        }
                    }
                
            }.background(Color.black.opacity(0.06)).clipShape(Capsule()).padding(.top,25)
            
            TabView(selection: self.$index,
                    content:  {
                        GridView(fitVeri: gunlukFitVeri).tag(1)
                        
                        GridView(fitVeri: haftalikFitVeri).tag(2)
                        
                        VStack { Text("Aylık veriler")}.tag(3)
                    }).tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Spacer()
            
        }.padding(.top)
    }
}


struct GridView: View {
    var fitVeri : [Fitness]
    var sutunlar = Array(repeating: GridItem(.flexible(),spacing: 20), count: 2)
    var body: some View {
        LazyVGrid(columns: sutunlar, spacing:30) {
            
            ForEach(fitVeri) { fit in
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                    VStack(alignment: .leading, spacing:20) {
                        Text(fit.baslik).foregroundColor(.white)
                        Text(fit.veri).font(.title).fontWeight(.bold).foregroundColor(.white).padding(.top,10)
                        
                        HStack {
                            Spacer()
                            Text(fit.tavsiye).foregroundColor(.white)
                        }
                        
                    }//VStack
                    .padding().background(Color(fit.goruntu)).cornerRadius(20).shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    
                    Image(fit.goruntu).renderingMode(.template).foregroundColor(.white)
                        .padding().background(Color.white.opacity(0.12)).clipShape(Circle())
                })//ZStack
            }
            
        }.padding(.horizontal).padding(.top,25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
