//
//  FixedSize_Ornek1.swift
//  Day35-FixedSize
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct FixedSize_Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Fixed Size Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Text("FixedSize metodu, bir view için parentView'inin kendisine çizdiği sınırları aşmasını sağlar").frame(maxWidth:.infinity).font(.title).padding().background(Color.yellow).layoutPriority(1)
            
            ZStack(alignment:.leading){
                HStack {
                    Spacer()
                    Image("swiftui").resizable().frame(width:200,height: 200)
                }
                
                Text("Her sabah 3 kilometre koşarım").font(.system(size: 40)).shadow(color: .white, radius: 1, x: 1, y: 1).padding().fixedSize(horizontal: true, vertical: false).frame(width: 200, height: 200, alignment: .leading).border(Color.yellow)
                
            }
            
            ZStack(alignment:.leading){
                HStack {
                    Spacer()
                    Image("swiftui").resizable().frame(width:200,height: 200)
                }
                
                Text("Her sabah 5 kilometre koşarım").font(.system(size: 40)).shadow(color: .white, radius: 1, x: 1, y: 1).padding().fixedSize(horizontal: false, vertical: true).frame(width: 200, height: 200, alignment: .leading).border(Color.yellow)
                
            }
            
        }
    }
}

struct FixedSize_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        FixedSize_Ornek1()
    }
}
