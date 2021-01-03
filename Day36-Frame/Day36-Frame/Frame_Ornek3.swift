//
//  Frame_Ornek3.swift
//  Day36-Frame
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Frame_Ornek3: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Frame Örnek - 3").font(.largeTitle).foregroundColor(.black)
            Text("Min ve Max boyutlar").font(.title).foregroundColor(.gray)
            
            HStack {
                Image(systemName: "arrow.left")
                Text("Yatayda sonsuza kadar genişliyebilir").padding()
                Image(systemName: "arrow.right")
            }.frame(maxWidth:.infinity).background(Color.orange)
            
            VStack {
                Image(systemName: "arrow.up")
                Text("Dikeyde istediğiniz kadar uzatabilirsiniz")
                Image(systemName: "arrow.down")
            }.frame(minHeight:10, maxHeight:300).background(Color.pink)
            
            HStack {
                Rectangle().foregroundColor(.red).padding().frame(minWidth:200,minHeight: 50)
                Rectangle().foregroundColor(.red).padding()
                Rectangle().foregroundColor(.red).padding()
                Rectangle().foregroundColor(.red).padding()
                Rectangle().foregroundColor(.red).padding()
            }
            
            
        }.font(.title).foregroundColor(.white)
    }
}

struct Frame_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Frame_Ornek3()
    }
}
