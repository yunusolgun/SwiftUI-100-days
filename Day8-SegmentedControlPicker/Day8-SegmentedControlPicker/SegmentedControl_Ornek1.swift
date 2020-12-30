//
//  SegmentedControl_Ornek1.swift
//  Day8-SegmentedControlPicker
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct SegmentedControl_Ornek1: View {
    
    @State private var geceGunduz = "Gündüz"
    @State private var sekme = 1
    @State private var secim = -1
    
    var body: some View {
        VStack(spacing:20) {
            Text("Segmented Control Picker").font(.largeTitle)
            
            Picker("", selection: $geceGunduz) {
                Text("Gündüz").tag("Gündüz")
                Text("Gece").tag("Gece")
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text("Görüntülerle birlikte oluşturalım")
            
            Picker("", selection: $sekme) {
                Image(systemName: "sun.min").tag(0)
                Image(systemName: "moon").tag(1)
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text("Günde kaç öğün yersiniz?").font(.title).foregroundColor(.gray)
            
            Picker("", selection: $secim) {
                Text("Bir").tag(1)
                Text("İki").tag(2)
                Text("Üç").tag(3)
                Text("Daha fazla").tag(4)
            }.pickerStyle(SegmentedPickerStyle())
            .background(RoundedRectangle(cornerRadius: 8).stroke(Color.red,lineWidth: secim == -1 ? 2 : 0)).padding()
            
            
        }
    }
}

struct SegmentedControl_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl_Ornek1()
    }
}
