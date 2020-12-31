//
//  Stepper_Ornek2.swift
//  Day10-Stepper
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct Stepper_Ornek2: View {
    @State private var degerStepper = 1
    var body: some View {
        VStack(spacing:20) {
            Text("Stepper Örnek-2").font(.largeTitle)
            Text("Stepper ve Label ilişkisi").foregroundColor(.gray)
            
            Stepper("Yaşınız kaç: ", value: $degerStepper).padding(.horizontal)
            
            Text("Label olmadan stepper kullanımı").foregroundColor(.green)
            
            Stepper("", value: $degerStepper).padding(.horizontal)
            
            Text("Label gizli").foregroundColor(.purple)
            
            Stepper("", value: $degerStepper).labelsHidden()
            
            Text("Stepper nesnesi SOLDA").foregroundColor(.red).padding(.top,20)
            
            HStack {
                Stepper("", value: $degerStepper).labelsHidden()
                Spacer()
            }.padding(.horizontal)
            
        }
    }
}

struct Stepper_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Ornek2()
    }
}
