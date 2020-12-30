//
//  Picker_Ornek2.swift
//  Day6-Picker
//
//  Created by yunus olgun on 29.12.2020.
//

import SwiftUI

struct Picker_Ornek2: View {
    @State private var secilenIl = 2
    @State private var secilenDizi = "Breaking Bad"
    
    var body: some View {
        VStack(spacing:20) {
            Text("Picker Örnek - 2").font(.largeTitle).foregroundColor(.red).bold()
            
            HStack {
                Picker(selection: $secilenIl , label: Text("")) {
                    Text("Ankara").tag(1)
                    Text("İstanbul").tag(2)
                    Text("İzmir").tag(3)
                    Text("Konya").tag(4)
                }.padding(.horizontal)
                .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                .cornerRadius(15)
                .shadow(radius: 5)
                .foregroundColor(.white)
                .labelsHidden()
            }.padding()
            
            
            Text("Bugün hangi diziyi izleyeceksin?").foregroundColor(.gray).font(.title)
            
            
            Picker(selection: $secilenDizi, label: Text(""), content: {
                Text("Prison Break").tag("Prison Break")
                Text("Breaking Bad").tag("Breaking Bad")
                Text("Game of Thrones").tag("Game of Thrones")
                Text("Friends").tag("Friends")
            }).padding(.horizontal)
            .labelsHidden()
            .background(RoundedRectangle(cornerRadius: 15).stroke(Color.purple,lineWidth: 5))
            
       
            
        }
    }
}

struct Picker_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Ornek2()
    }
}
