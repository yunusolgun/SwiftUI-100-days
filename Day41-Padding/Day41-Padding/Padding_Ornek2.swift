//
//  Padding_Ornek2.swift
//  Day41-Padding
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Padding_Ornek2: View {
    var body: some View {
        VStack(spacing:10) {
            Text("Padding Örnek - 2").font(.largeTitle)
            
            HStack {
                Spacer()
                Text("Önce")
                Spacer()
                Text("Sonra")
                Spacer()
                
            }
            
            HStack(spacing:60) {
                Image("p1").border(Color.red,width:4)
                Image("p1").padding(10).border(Color.red,width:4)
            }
            
            HStack(spacing:60) {
                Text("SwiftUI").border(Color.purple,width: 4)
                Text("SwiftUI").padding(30).border(Color.purple,width: 4)
            }
            
            HStack(spacing:20) {
                Rectangle().frame(width:100,height:100).foregroundColor(.red).padding(.horizontal).border(Color.blue,width: 3)
                RoundedRectangle(cornerRadius: 20).frame(width:100,height:100).foregroundColor(.blue).padding(.vertical).border(Color.red,width: 3)
                
                Circle().frame(width:100,height:100).foregroundColor(.yellow).padding(.horizontal,5).border(Color.blue,width: 3)
            }
            
            HStack {
                Image("p1").padding(.leading,20).overlay(
                    Text("Soldan 20").foregroundColor(.white))
                    .border(Color.red,width: 3)
                
                Image("p1").padding(.trailing,20).overlay(
                    Text("Sağdan 20").foregroundColor(.white))
                    .border(Color.red,width: 3)
            }
            
            HStack {
                Image("p1").padding(.top,20).overlay(
                    Text("Üstten 20").foregroundColor(.white))
                    .border(Color.red,width: 3)
                
                Image("p1").padding(.bottom,20).overlay(
                    Text("Alttan 20").foregroundColor(.white))
                    .border(Color.red,width: 3)
            }
            
            Text("Metin").padding(.init(top: 5, leading: 30, bottom: 0, trailing: 15)).background(Color.yellow)
            
            
        }.font(.title)
    }
}

struct Padding_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Padding_Ornek2()
    }
}
