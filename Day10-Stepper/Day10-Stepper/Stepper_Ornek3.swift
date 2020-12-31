//
//  Stepper_Ornek3.swift
//  Day10-Stepper
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct Stepper_Ornek3: View {
    @State private var yildizSayisi = 3
    @State private var deger = 30
    var body: some View {
        VStack(spacing:20) {
            Text("Stepper Örnek -3").font(.largeTitle)
            Text("Stepper'da değer aralığı").font(.title).foregroundColor(.gray)
            
            Stepper(value: $yildizSayisi, in: 1...5) {
                Text("Puanı ver: \(yildizSayisi)")
            }.padding(.horizontal)
            
            HStack {
                ForEach(1...yildizSayisi,id:\.self) {yildiz in
                    Image(systemName: "star.fill")
                }
            }.foregroundColor(.yellow).font(.title)
            
            Stepper("Customer stepper", value: $yildizSayisi).padding().background(Color.blue).foregroundColor(.white).font(.title)
            
            Stepper(value: $deger, in: 1...100) {
                Image(systemName: "circle.lefthalf.fill")
                Text("\(deger)/100")
            }.padding(.horizontal).font(.title).foregroundColor(.blue)
            
            HStack{
                Text("Sadece stepper renkli")
                Spacer()
                Stepper("", value: $deger).padding(0).background(Color(UIColor.systemTeal)).labelsHidden().cornerRadius(10)
            }.padding(.horizontal)
            
        }
    }
}

struct Stepper_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Stepper_Ornek3()
    }
}
