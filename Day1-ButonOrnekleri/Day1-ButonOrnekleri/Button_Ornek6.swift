//
//  Button_Ornek6.swift
//  Day1-ButonOrnekleri
//
//  Created by yunus olgun on 26.12.2020.
//

import SwiftUI

struct Button_Ornek6: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Buton Örnekleri - 6").font(.largeTitle)
            Text("Sağ alta buton").font(.title).foregroundColor(.gray)
            Text("ZStack kullanarak Floating button oluşturma işlemi çok kolay hale gelebiliyor.").font(.title).frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.orange)
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "plus").font(.largeTitle).padding()
                }).background(Color.purple).foregroundColor(.white).cornerRadius(50).padding()
            }
        }
    }
}

struct Button_Ornek6_Previews: PreviewProvider {
    static var previews: some View {
        Button_Ornek6()
    }
}
