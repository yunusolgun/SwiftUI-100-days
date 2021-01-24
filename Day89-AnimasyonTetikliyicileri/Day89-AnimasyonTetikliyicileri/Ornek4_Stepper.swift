//
//  Ornek4_Stepper.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek4_Stepper: View {
    @State private var stepperValue : CGFloat = 1.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("Trigger").font(.largeTitle)
            Text("Stepper").font(.title).foregroundColor(.gray)
            
            ZStack {
                ForEach(0...40, id:\.self) { _ in
                    Circle()
                        .foregroundColor(.red)
                        .opacity(0.2)
                        .frame(width: .random(in: 10...100), height: .random(in: 10...100))
                        .position(x: .random(in: self.stepperValue...400), y: .random(in: self.stepperValue...400))
                        .animation(.default)
                        
                }
            }
            
            Stepper("Ayarla", value: $stepperValue, in: 1.0...5.0).padding()
            
        }
    }
}

struct Ornek4_Stepper_Previews: PreviewProvider {
    static var previews: some View {
        Ornek4_Stepper()
    }
}
