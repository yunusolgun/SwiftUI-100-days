//
//  Stepper_Ornek1.swift
//  Day10-Stepper
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct Stepper_Ornek1: View {
    @State private var degerStepper = 1
    @State private var degerler = [0,1]
    var body: some View {
        VStack(spacing:20) {
            Text("Stepper Örnek -1").font(.largeTitle)
            Stepper("Seçtiğiniz değer: \(degerStepper)", value: $degerStepper).padding(.horizontal)
            Divider()
            Image(systemName: "bolt.fill").font(.title).foregroundColor(.yellow)
            Text("Arttırma ve azaltma işlemlerini manuel yapabilirsiniz").foregroundColor(.red)
            
            Stepper(
                onIncrement: { self.degerler.append(self.degerler.count)},
                onDecrement: { self.degerler.removeLast() },
                label: {
                    Text("Artırma ve azaltma işlemleri")
                }).padding()
            
            
            HStack {
                ForEach(degerler, id:\.self) { sayi in
                    Image(systemName: "\(sayi).circle.fill")
                }
            }.font(.title).foregroundColor(.pink)
            
            
        }
    }
}

struct Stepper_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Ornek1()
    }
}
