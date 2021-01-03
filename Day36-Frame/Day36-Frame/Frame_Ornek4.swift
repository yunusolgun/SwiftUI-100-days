//
//  Frame_Ornek4.swift
//  Day36-Frame
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Frame_Ornek4: View {
    var body: some View {
        VStack(spacing:20) {
            
            
            Text("Normal boyut")
            Image(systemName: "arrow.right.arrow.left").padding().background(Color.orange)
            
            
            Text("Alttaki goruntu bulunduğu tüm boşluğu kaplayacak")
            Image(systemName: "arrow.right.arrow.left").padding().frame(maxWidth:.infinity, maxHeight:.infinity).background(Color.pink)
            
            
            
        }.font(.title)
    }
}

struct Frame_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        Frame_Ornek4()
    }
}
