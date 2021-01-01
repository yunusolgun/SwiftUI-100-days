//
//  Color_Ornek3.swift
//  Day16-Color
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Color_Ornek3: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Color").font(.largeTitle)
            Text("Color Multiply").font(.title).foregroundColor(.gray)
            
            HStack {
                
                Color.pink.frame(width:90,height:90)
                Image(systemName: "plus").font(.title)
                Color.blue.frame(width:90,height:90)
                Image(systemName: "equal").font(.title)
                
                Color.pink.colorMultiply(Color.blue).frame(width:90,height:90)
            }
            
            HStack {
                
                Color.gray.frame(width:90,height:90)
                Image(systemName: "plus").font(.title)
                Color.green.frame(width:90,height:90)
                Image(systemName: "equal").font(.title)
                
                Color.gray.colorMultiply(Color.green).frame(width:90,height:90)
            }
            
        }
    }
}

struct Color_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Color_Ornek3()
    }
}
