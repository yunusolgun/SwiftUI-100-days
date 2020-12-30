//
//  Picker_Ornek3.swift
//  Day6-Picker
//
//  Created by yunus olgun on 30.12.2020.
//

import SwiftUI

struct Picker_Ornek3: View {
    
    @State private var secilenKisi = "Ahmet"
    
    var body: some View {
        VStack(spacing:20) {
            Text("Picker Örnek -3").font(.largeTitle).foregroundColor(.red).bold()
            
            HStack {
                Picker(selection: $secilenKisi, label: Text(""), content: {
                    OzelPicker(adi: "Mehmet")
                    OzelPicker(adi: "Ahmet")
                    OzelPicker(adi: "Gamze")
                    OzelPicker(adi: "Aslı")
                    OzelPicker(adi: "Fatih")
                }).foregroundColor(.white)
                .labelsHidden()
                .background(Color(red: 0.1, green: 0.2, blue: 0.3))
                .cornerRadius(15)
                .shadow(radius:  10)
            }.padding()
            

        }
    }
}


struct OzelPicker: View {
    var adi: String
    var body: some View {
        return HStack {
            Image(systemName: "person.fill").padding().foregroundColor(.red)
            Text(adi).foregroundColor(.white)
        }.tag(adi)
    }
}

struct Picker_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Ornek3()
    }
}
