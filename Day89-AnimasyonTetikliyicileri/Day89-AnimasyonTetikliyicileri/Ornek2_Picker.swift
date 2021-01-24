//
//  Ornek2_Picker.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek2_Picker: View {
    @State private var segment = 0
    
    
    var body: some View {
        VStack(spacing:20) {
            Text("Triggers").font(.largeTitle)
            Text("Picker").font(.title).foregroundColor(.gray)
            
            Picker("", selection: $segment) {
                Text("Gündüz ☀️").tag(0)
                Text("Gece 🌙").tag(1)
            }.pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            
            GeometryReader { gr in
                ZStack {
                    VStack(spacing:20){
                        Spacer()
                        
                        HStack {
                            Spacer()
                            Image(systemName: "sun.max.fill").font(.system(size: 50))
                            Spacer()
                        }.padding(.top,25)
                        
                        Text("Gündüz Raporu").fontWeight(.bold)
                        Spacer()
                        
                    }.background(Image("day").aspectRatio(contentMode: .fill))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    .offset(x: self.segment == 0 ? 0 : -gr.size.width , y: 0)
                    .animation(.default)
                    
                    
                    
                    VStack(spacing:20) {
                        Spacer()
                        HStack {
                            Spacer()
                            Image(systemName: "moon.fill").font(.system(size: 50))
                            Spacer()
                        }
                        Text("Gece Raporu").fontWeight(.bold)
                        Spacer()
                    }.background(Image("night").aspectRatio(contentMode: .fill))
                    .cornerRadius(20)
                    .foregroundColor(.green)
                    .offset(x: self.segment == 1 ? 0 : gr.size.width , y: 0)
                    .animation(.default)
                    
                }.shadow(radius: 15)
                .padding(.horizontal)
            }
            
        }
    }
}

struct Ornek2_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2_Picker()
    }
}
