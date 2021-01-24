//
//  Ornek6_OnAppear.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek6_OnAppear: View {
    @State private var expand = false
    
    var body: some View {
        ZStack {
            Image(systemName: "sun.max.fill")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(Circle().fill(Color.green)
                                .scaleEffect(expand ? 20 : 1)
                                .edgesIgnoringSafeArea(.all))
                .onAppear(perform: {
                    self.expand.toggle()
                })
                .animation(.easeIn)
            
            VStack(spacing:20) {
                Text("Trigger").font(.largeTitle)
                Text("OnAppear").font(.title).foregroundColor(.gray)
                Spacer()
            }
            
        }
    }
}

struct Ornek6_OnAppear_Previews: PreviewProvider {
    static var previews: some View {
        Ornek6_OnAppear()
    }
}
