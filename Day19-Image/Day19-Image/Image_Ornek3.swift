//
//  Image_Ornek3.swift
//  Day19-Image
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Image_Ornek3: View {
    var body: some View {
        VStack(spacing:10) {
            Text("Image Örnek - 3")
            
            Text("Circle")
            Image("manzara").clipShape(Circle())
            
            Text("Roundend Rectangle")
            Image("manzara").clipShape(RoundedRectangle(cornerRadius: 20)).shadow(radius: 10,x:1, y:2)
            
            Text("Capsule ve Offset")
            Image("manzara").clipShape(Capsule().offset(x: -80, y: 0))
            
        }
    }
}

struct Image_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Image_Ornek3()
    }
}
