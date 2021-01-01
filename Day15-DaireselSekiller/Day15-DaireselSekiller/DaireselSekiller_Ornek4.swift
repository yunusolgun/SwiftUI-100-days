//
//  DaireselSekiller_Ornek4.swift
//  Day15-DaireselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct DaireselSekiller_Ornek4: View {
    var body: some View {
        VStack(spacing:10) {
            Text("Dairesel Şekiller Örnek - 4").font(.largeTitle)
            
            ZStack {
                Circle().fill(Color.red)
                Circle().fill(Color.white).padding(40)
                Circle().fill(Color.red).padding(80)
                Circle().fill(Color.white).padding(100)
            }.frame(width:280,height:250)
            
            ZStack(alignment:.bottom) {
                Circle().fill(Color.secondary).frame(height:250)
                Circle().fill(Color.secondary).frame(height:200)
                Circle().fill(Color.secondary).frame(height:150)
                Circle().fill(Color.secondary).frame(height:100)
            }
            
        }
    }
}

struct DaireselSekiller_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        DaireselSekiller_Ornek4()
    }
}
