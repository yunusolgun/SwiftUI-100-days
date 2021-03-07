//
//  ContentView.swift
//  Day110-Uygulama17
//
//  Created by yunus olgun on 7.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Profil: Identifiable {
    var id: Int
    var adi: String
    var goruntu: String
    var yasi: String
    var konum: CGFloat
}

struct Home: View {
    @State var profiller = [
        Profil(id: 0, adi: "Canan", goruntu: "g0", yasi: "27", konum: 0),
        Profil(id: 1, adi: "Cansu", goruntu: "g1", yasi: "19", konum: 0),
        Profil(id: 2, adi: "Ceren", goruntu: "g2", yasi: "22", konum: 0),
        Profil(id: 3, adi: "Fatma", goruntu: "g3", yasi: "20", konum: 0),
        Profil(id: 4, adi: "Ayşe", goruntu: "g4", yasi: "26", konum: 0),
        Profil(id: 5, adi: "Zehra", goruntu: "g5", yasi: "18", konum: 0),
        Profil(id: 6, adi: "Gamze", goruntu: "g6", yasi: "29", konum: 0),
        Profil(id: 7, adi: "Gizem", goruntu: "g7", yasi: "25", konum: 0)
    ]
    var body: some View {
        VStack {
            
            HStack(spacing:15) {
                Button(action: {}, label: {
                    Image("menu").renderingMode(.template)
                })
                Text("Dating").font(.title).fontWeight(.bold)
                Spacer()
                Button(action: {}, label: {
                    Image("bildirim").renderingMode(.template)
                })
                
            }.foregroundColor(.black).padding()
            
            
            GeometryReader { gr in
                
                ZStack {
                    
                    ForEach(profiller.reversed()) { profil in
                        ProfilView(profil: profil, frame: gr.frame(in: .global))
                    }
                    
                }//ZStack bitişi
                
            }.padding([.horizontal, .bottom])
            
            
            
        }.background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.all))
    }
}

struct ProfilView: View {
    @State var profil: Profil
    var frame : CGRect
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            Image(profil.goruntu).resizable().aspectRatio(contentMode: .fill).frame(width: frame.width, height: frame.height)
            
            ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                (profil.konum > 0 ? Color.green : Color("Renk1")).opacity(profil.konum != 0 ? 0.7 : 0)
                
                HStack {
                    if profil.konum < 0 {
                        Spacer()
                    }
                    
                    Text(profil.konum == 0 ? "" : (profil.konum > 0 ? "Beğen" : "Reddet")).font(.title).fontWeight(.bold).foregroundColor(.white).padding(.top,25).padding(.horizontal)
                    
                    if profil.konum > 0 {
                        Spacer()
                    }
                }
                
                
            })//ZStack
            
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.4)]), startPoint: .center, endPoint: .bottom)
            
            
            VStack(spacing:20) {
               
                HStack {
                    VStack(alignment: .leading, spacing: 12, content: {
                        Text(profil.adi).font(.title).fontWeight(.bold)
                        Text(profil.yasi).fontWeight(.bold)
                    }).foregroundColor(.white)
                    
                    Spacer()
                }
                
                
                HStack(spacing:35) {
                    Spacer()
                    
                    Button(action: {
                        withAnimation(Animation.easeIn(duration: 0.8)) {
                            profil.konum = -500
                        }
                    }, label: {
                        Image(systemName: "xmark").font(.system(size: 24, weight: .bold)).foregroundColor(.white).padding(.all,20).background(Color("Renk1")).clipShape(Circle())
                    })
                    
                    
                    Button(action: {
                        withAnimation(Animation.easeIn(duration: 0.8)) {
                            profil.konum = 500
                        }
                    }, label: {
                        Image(systemName: "checkmark").font(.system(size: 24, weight: .bold)).foregroundColor(.white).padding(.all,20).background(Color.green).clipShape(Circle())
                    })
                    
                    Spacer()
                }
                
                
            }//VStack
            .padding(.all)
            
            
        })//ZStack bitişi
        .cornerRadius(20)
        .offset(x: profil.konum)
        .rotationEffect(.init(degrees: profil.konum == 0 ? 0: (profil.konum > 0 ? 12 : -12)))
        .gesture(DragGesture().onChanged({ (value) in
            withAnimation(.default) {
                profil.konum = value.translation.width
            }
        }).onEnded({ (value) in
            withAnimation(.easeIn) {
                if profil.konum > 150 {
                    profil.konum = 500
                } else if profil.konum < -150 {
                    profil.konum = -500
                } else {
                    profil.konum = 0
                }
            }
        }))
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
