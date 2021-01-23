//
//  Ornek10_AnimasyonVeParametreler3.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek10_AnimasyonVeParametreler3: View {
    @State private var change = false
    @State private var circleProgress : CGFloat = 1.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("ProgressBar Örnek").font(.largeTitle)
            
            Button("Progress") {
                self.change.toggle()
                self.circleProgress = self.change ? 0.25 : 1
            }
            
            Spacer()
            
            Circle().trim(from: 0, to: circleProgress)
                .stroke(Color.blue,style: StrokeStyle(lineWidth:40, lineCap: .round))
                .frame(height:300)
                .rotationEffect(.degrees(-90))
                .padding(.all, 40)
                .animation(.default)
            
            Spacer()
            
        }.font(.title)
    }
}

struct Ornek10_AnimasyonVeParametreler3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek10_AnimasyonVeParametreler3()
    }
}
