//
//  DaireselSekiller_Ornek3.swift
//  Day15-DaireselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct DaireselSekiller_Ornek3: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Dairesel şekiller Örnek - 3").font(.largeTitle)
            Circle().stroke(Color.blue).padding()
            Circle().stroke(Color.red,lineWidth: 5)
            Ellipse().stroke(Color.purple,style: StrokeStyle(lineWidth: 10, dash: [15,10])).padding()
            
            ZStack {
                Capsule().stroke(Color.red,lineWidth: 50)
                Capsule().stroke().padding(5)
            }
            
            ZStack {
                Ellipse().strokeBorder(Color.blue,lineWidth: 50)
                Ellipse().stroke(Color.yellow,lineWidth: 5)
            }
            
        }
    }
}

struct DaireselSekiller_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        DaireselSekiller_Ornek3()
    }
}
