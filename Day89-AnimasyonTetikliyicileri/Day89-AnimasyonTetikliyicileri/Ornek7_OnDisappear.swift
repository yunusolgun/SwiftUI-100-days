//
//  Ornek7_OnDisappear.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek7_OnDisappear: View {
    @State private var showTip = true
    @State private var showTipButton = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Triggers").font(.largeTitle)
            Text("On Disappear").font(.title).foregroundColor(.gray)
            
            Spacer()
            
            if showTip {
                VStack(spacing:20) {
                    HStack {
                        Image(systemName: "info.circle.fill")
                        Spacer()
                        Text("Günün Bilgisi")
                        Spacer()
                    }.foregroundColor(.white)
                    Spacer()
                    Button("Anladım!") {
                        self.showTip.toggle()
                    }
                }.padding(.all, 15)
                .background(Rectangle().fill(Color.green).shadow(radius: 3))
                .padding(.horizontal, 10)
                .frame(height:200)
                .onDisappear(perform: {
                    self.showTipButton.toggle()
                })
            }
            
            
            if showTipButton {
                HStack {
                    Button(action: {
                        self.showTipButton = false
                        self.showTip = true
                    }, label: {
                        Image(systemName: "info.circle.fill")
                    }).padding(.leading, 25)
                    
                    Spacer()
                }
            }
            
            
        }.animation(.default)
        .font(.title)
    }
}

struct Ornek7_OnDisappear_Previews: PreviewProvider {
    static var previews: some View {
        Ornek7_OnDisappear()
    }
}
