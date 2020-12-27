//
//  Button_Ornek4.swift
//  Day1-ButonOrnekleri
//
//  Created by yunus olgun on 26.12.2020.
//

import SwiftUI

struct Button_Ornek4: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Buton Örnek - 4").font(.largeTitle)
            Text("Butonlarda Kenarlık").font(.title).foregroundColor(.gray)
            Text("Butonlarınıza kenarlık ekleyerek onları daha güzel hale getirebilirsiniz.").font(.title).frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.orange)
            
            Button(action: {}, label: {
                Text("Kare Kenarlıklı Buton").padding().border(Color.orange, width: 5)
            })
            
            Button(action: {}, label: {
                Text("Yuvarlak Kenarlıklı Buton").padding().border(Color.orange, width: 5).cornerRadius(20)
            })
            
            Button(action: {}, label: {
                Text("Dairesel Kenarlıklı Buton").padding().background(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 5))
            })
            
        }
    }
}

struct Button_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        Button_Ornek4()
    }
}
