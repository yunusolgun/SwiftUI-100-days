//
//  ScrollView_Ornek1.swift
//  Day7-ScrollView
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct ScrollView_Ornek1: View {
    
    @State private var isimler =
        ["Ahmet","Mehmet","Cahit","Sinan",
        "Gizem","Hülya","Gamze","Kemal","Kaan","Fatih",
        "Faruk","Sinem"]
    
    var body: some View {
        
        NavigationView {
            
            GeometryReader { gr in
                
                ScrollView {
                    
                    ForEach(self.isimler, id:\.self) { isim in
                        
                        NavigationLink(destination: DetayView(kisiAdi: isim)) {
                            
                            HStack {
                                Text(isim).foregroundColor(.primary)
                                Image(systemName: "checkmark.seal.fill").foregroundColor(.green)
                                Spacer()
                                Image(systemName: "chevron.right.circle.fill").foregroundColor(.pink)
                            }.font(.system(size: 24, weight: .bold, design: .rounded))
                            .padding()
                            .cornerRadius(8)
                            .background(Color.white)
                            .shadow(radius: 2, y:3)
                        }
                        
               
                    }.frame(width: gr.size.width - 35)
                    .padding()
                }.navigationBarTitle(Text("Kişi Listesi"))
            }
        }
        
    }
}


struct DetayView: View {
    @Environment(\.presentationMode) var presentationMode
    var kisiAdi:String
    var body: some View {
        ZStack {
            Color.black
            Text(self.kisiAdi).fontWeight(.bold).font(.largeTitle).padding().foregroundColor(.white)
        }.navigationBarTitle(Text("Kişi Detayları"),displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ScrollView_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Ornek1()
    }
}
