//
//  ContentView.swift
//  Day101-Uygulama8
//
//  Created by yunus olgun on 13.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Home: View {
    @State var sliderValue: CGFloat = 50
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button { } label: {
                        Image(systemName: "arrow.left").font(.system(size: 14, weight: .bold)).foregroundColor(.gray).padding().background(Color("Renk1")).clipShape(Circle())
                            .shadow(color: Color("Renk2").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    }
                    
                    Spacer()
                    
                    Button { } label: {
                        Image(systemName: "line.horizontal.3.decrease").font(.system(size: 14, weight: .bold)).foregroundColor(.gray).padding().background(Color("Renk1")).clipShape(Circle())
                            .shadow(color: Color("Renk2").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    }
                    
                }//HStack bitişi
                
                Text("Şarkı çalıyor").fontWeight(.bold).foregroundColor(.gray)
            } // ZStack bitişi
            
            Image("sarkiKapak").resizable().aspectRatio(contentMode: .fit).padding(.horizontal,25).clipShape(Circle()).padding(.all,8)
                .background(Color("Renk1").opacity(0.6)).clipShape(Circle())
                .shadow(color: Color.black.opacity(0.35), radius: 8, x: 8, y: 8)
                .shadow(color: Color.white, radius: 10, x: -10, y: -10)
            
            
            Text("Gülpembe").font(.title).fontWeight(.bold).foregroundColor(.gray).padding(.top,25)
            Text("Barış Manço").font(.caption).foregroundColor(.gray).padding(.top,8)
            
            HStack {
                Text("1:15").font(.caption2).foregroundColor(.gray)
                Spacer()
                Text("3:50").font(.caption2).foregroundColor(.gray)
            }.padding(.top,25)
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                Capsule().fill(Color.gray.opacity(0.2)).frame(height:6)
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center)) {
                    Capsule().fill(Color("Renk2").opacity(0.6)).frame(width: sliderValue, height: 6)
                    
                    Circle().fill(Color("Renk2")).opacity(0.7).frame(width:10, height:10).padding(.all,10).background(Color("Renk1")).clipShape(Circle())
                        .shadow(color: Color("Renk2").opacity(0.6), radius: 10, x: 4, y: 2)
                }
            } // ZStack bitişi
            .gesture(DragGesture().onChanged({ value in
                if value.location.x <= UIScreen.main.bounds.width - 30 && value.location.x >= 0 {
                    self.sliderValue = value.location.x
                }
            })).padding(.top,8)
            
            HStack(spacing:20) {
                Button {} label : {
                    
                    Image(systemName: "backward.fill").font(.system(size: 14, weight: .bold)).foregroundColor(.gray).padding(.all,25)
                        .background(Color("Renk1"))
                        .clipShape(Circle())
                        .shadow(color: Color("Renk2").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    
                    Image(systemName: "pause.fill").font(.system(size: 14, weight: .bold)).foregroundColor(.white).padding(.all,25)
                        .background(Color("Renk2"))
                        .clipShape(Circle())
                        .shadow(color: Color("Renk2").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    
                    
                    Image(systemName: "forward.fill").font(.system(size: 14, weight: .bold)).foregroundColor(.gray).padding(.all,25)
                        .background(Color("Renk1"))
                        .clipShape(Circle())
                        .shadow(color: Color("Renk2").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    
                    
                }
            }.padding(.top,25)
            
            Spacer()
            
            
        }.padding(.all).background(Color("Renk1")).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
