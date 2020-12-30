//
//  SegmentedControl_Ornek2.swift
//  Day8-SegmentedControlPicker
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct SegmentedControl_Ornek2: View {
    @State private var secim = 2
    var body: some View {
        VStack(spacing:20) {
            Text("SegmentedControl Örnek -2").font(.largeTitle)
            Text("Hangi Mac modelini kullanıyorsunuz?").font(.title).foregroundColor(.gray)
            
            Picker("", selection: $secim) {
                Text("Macbook Pro").tag(1)
                Text("Macbook Air").tag(2)
                Text("iMac").tag(3)
            }.pickerStyle(SegmentedPickerStyle())
            .background(Color.yellow)
            .padding(.horizontal)
            
            Text("İlk hangi iPhone modelini kullandınız?")
            
            Picker("", selection: $secim) {
                Text("iPhone 5").tag(1)
                Text("iPhone SE").tag(2)
                Text("iPhone 6").tag(3)
            }.pickerStyle(SegmentedPickerStyle())
            .background(Color.pink)
            .cornerRadius(10)
            .padding(.horizontal)
            
            
        }
    }
}

struct SegmentedControl_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl_Ornek2()
    }
}
