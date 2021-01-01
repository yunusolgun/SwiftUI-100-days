//
//  Color_Ornek1.swift
//  Day16-Color
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Color_Ornek1: View {
    var body: some View {
        
        VStack(spacing:20) {
            Text("Color'a bir view gibi davranabilirsiniz").frame(maxWidth:.infinity).font(.largeTitle)
            
            HStack(spacing:40) {
                Color.pink.frame(width:90,height: 90)
                Color.blue.frame(width:90,height: 90)
                Color.purple.frame(width:90,height: 90).cornerRadius(20)
            }
            
            Spacer()
            
            
            
        }
        
    }
}

struct Color_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Color_Ornek1()
    }
}
