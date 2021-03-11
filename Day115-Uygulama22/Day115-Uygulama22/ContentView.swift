//
//  ContentView.swift
//  Day115-Uygulama22
//
//  Created by yunus olgun on 11.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}


struct Home: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            GeometryReader { gr in
                Image("kapak").resizable().aspectRatio(contentMode: .fill)
                    .offset(y: -gr.frame(in: .global).minY)
                    .frame(width: UIScreen.main.bounds.width,
                           height: gr.frame(in: .global).minY > 0 ? gr.frame(in: .global).minY + 450 : 450)
                
     
                
            }.frame(height:450)
            
            VStack(alignment: .leading, spacing: 15, content: {
                Text("Toy's Story").font(.system(size: 35, weight: .bold)).foregroundColor(.white)
                HStack(spacing:15) {
                    ForEach(1...5, id:\.self) { _ in
                        Image(systemName: "star.fill").foregroundColor(.white)
                    }
                }
                
                
                Text("Bazı sahneleri çok küçük çocukları korkutabilir").font(.caption).foregroundColor(.white).padding(.top,15)
                
                Text(mesaj).padding(.top,10).foregroundColor(.white)
                
                HStack{
                    Button(action: {}, label: {
                        Text("Sık kullananılanlar").fontWeight(.bold).foregroundColor(.white).padding(.vertical,10).padding(.horizontal,20).background(Color.blue).cornerRadius(10)
                    })
                    
                    Button(action: {}, label: {
                        Text("Bilet al").fontWeight(.bold).foregroundColor(.white).padding(.vertical,10).padding(.horizontal,20).background(Color.red).cornerRadius(10)
                    })
                }.padding(.top,25)
                
            }).padding(.top,25).padding(.horizontal).background(Color.black).cornerRadius(20).offset(y: -35)
            
        }).edgesIgnoringSafeArea(.all).background(Color.black.edgesIgnoringSafeArea(.all))
        
    }
}

var mesaj = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer elementum, augue eu varius commodo, felis lorem aliquam nibh, a porttitor orci purus ut odio. Mauris sed pretium est. Donec ut ipsum massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec risus mauris, viverra nec bibendum in, aliquam vel massa. Suspendisse eros dui, ultrices et ipsum non, dictum iaculis neque. Nam finibus commodo nibh, id mollis ante lacinia vel. Aenean non condimentum massa. Aliquam aliquet libero at facilisis scelerisque. Donec vehicula diam vitae felis ullamcorper, a vulputate orci ultricies. In vitae ornare mauris, sit amet euismod nunc. Sed rhoncus eleifend leo varius aliquet. Integer condimentum dui id consectetur faucibus. Proin quis urna enim. Aliquam erat volutpat. Suspendisse at congue urna.

"""

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
