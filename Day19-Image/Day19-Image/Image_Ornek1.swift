//
//  Image_Ornek1.swift
//  Day19-Image
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Image_Ornek1: View {
    var body: some View {
        
        VStack(spacing:20) {
            Text("Image Örnek - 1").font(.largeTitle)
            Text("Asset Catalogdan görüntüler").font(.title).foregroundColor(.gray)
            
            Image("swiftui")
            
            Image("swiftui").resizable()
            
        }
        
    }
}

struct Image_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Image_Ornek1()
    }
}
