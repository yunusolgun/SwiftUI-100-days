//
//  Ornek11_BasitAnimasyonSoru1.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek11_BasitAnimasyonSoru1: View {
    @State private var change = false
    var offsetValue : CGFloat = 200
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon Soru - 1").font(.largeTitle)
            Spacer()
            
            VStack(spacing:1) {
                
                HStack(alignment: .bottom, spacing:1) {
                    Rectangle().frame(width:70, height:35)
                        .offset(x: change ? 0 : -offsetValue)
                    
                    
                    Rectangle().frame(width:35, height:70)
                        .offset(y: change ? 0 : -offsetValue)
                        
                }.offset(x: -18)
                
                
                HStack(alignment: .top, spacing:1) {
                    Rectangle().frame(width:36, height:72)
                        .offset(y: change ? 0 : offsetValue)
                    
                    
                    Rectangle().frame(width:72, height:36)
                        .offset(x: change ? 0 : offsetValue)
                        
                }.offset(x: 18)
                

                
            }.rotationEffect(.degrees(change ? 0 : -90))
            .foregroundColor(change ? .red : .orange)
            .opacity(change ? 1 : 0)
            .animation(.default)
            


            Spacer()
            Button("Change") {
                self.change.toggle()
            }.font(.title)
            Spacer()
            

            
            
        }
    }
}

struct Ornek11_BasitAnimasyonSoru1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek11_BasitAnimasyonSoru1()
    }
}
