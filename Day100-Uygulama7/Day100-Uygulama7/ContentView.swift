//
//  ContentView.swift
//  Day100-Uygulama7
//
//  Created by yunus olgun on 3.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Album {
    var adi: String
    var sahibi: String
    var kapagi: String
}

var albumler = [
    Album(adi: "Let her go", sahibi: "Passanger", kapagi: "p1"),
    Album(adi: "Bad blood", sahibi: "Taylor swift", kapagi: "p2"),
    Album(adi: "Believer", sahibi: "Kurt hugo scheneider", kapagi: "p3"),
    Album(adi: "Let me love you", sahibi: "DJ snake", kapagi: "p4"),
    Album(adi: "Shape of you", sahibi: "Ed sherran", kapagi: "p5"),
    Album(adi: "Blank space", sahibi: "Taylor swift", kapagi: "p6"),
    Album(adi: "Havana", sahibi: "Camila cabello", kapagi: "p7"),
    Album(adi: "Red", sahibi: "Taylor swift", kapagi: "p8"),
    Album(adi: "I like it", sahibi: "J balvin", kapagi: "p9"),
    Album(adi: "Lover", sahibi: "Taylor swift", kapagi: "p10"),
    Album(adi: "7/27 harmony", sahibi: "Camila cabello", kapagi: "p11"),
    Album(adi: "Joanne", sahibi: "Lady gaga", kapagi: "p12"),
    Album(adi: "Roar", sahibi: "Katty perry", kapagi: "p13"),
    Album(adi: "My church", sahibi: "Marren morris", kapagi: "p14"),
    Album(adi: "Part of me", sahibi: "Katty perry", kapagi: "p15")
]


struct Home: View {
    var body: some View {
        VStack(spacing:0) {
            HStack {
                Text("Albüm Şarkıları").font(.system(size: 40)).fontWeight(.bold).foregroundColor(.black)
                Spacer()
            }.padding()
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.white.shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5))
            .zIndex(0)
            
            GeometryReader { anaFrame in
                
                ScrollView {
                    
                    VStack(spacing:15) {
                        ForEach(albumler, id:\.adi) { album in
                            GeometryReader { muzikAlani in
                                AlbumView(album: album)
                                    .scaleEffect(olcekDegeri(anaFrame: anaFrame.frame(in: .global).minY, minY: muzikAlani.frame(in: .global).minY))
                                    .opacity(
                                        Double(olcekDegeri(anaFrame: anaFrame.frame(in: .global).minY, minY: muzikAlani.frame(in: .global).minY))
                                    )
                            }.frame(height:100)
                        }
                        
                    }.padding(.horizontal).padding(.top,25)
                    
                }.zIndex(1)
                
            }
            
        }
    }
    
    func olcekDegeri(anaFrame: CGFloat, minY: CGFloat) -> CGFloat {
        withAnimation(.easeOut) {
            let olcek = (minY - 25) / anaFrame
            if olcek > 1 {
                return 1
            } else {
                return olcek
            }
        }
    }
    
}

struct AlbumView : View {
    var album: Album
    var body: some View {
        HStack {
            Image(album.kapagi).resizable().frame(width: 100, height: 100).cornerRadius(15)
            VStack(alignment:.leading, spacing:12) {
                Text(album.adi).fontWeight(.bold)
                Text(album.sahibi)
            }.padding(.leading,10)
            Spacer(minLength: 0)
        }.background(Color.white.shadow(color: Color.black.opacity(0.12), radius: 5, x: 0, y: 4)).cornerRadius(15)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
