//
//  Ornek2.swift
//  Day73-ViewModifier
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct KirmiziBanner: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(maxWidth:.infinity)
            .font(.title)
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
    }
}

struct Ornek2: View {
    @State private var toggleDurum = true
    @State private var txtVeri = ""
    
    var body: some View {
        VStack(spacing:20) {
            Text("Modifier Örnek - 2").font(.largeTitle).foregroundColor(.white)
            
            Text("Birden fazla kontrole uygulama").foregroundColor(.gray).font(.title)
            
            Button("Butona uygulanması",action: {}).modifier(KirmiziBanner())
            
            List {
                Text("Listeye uygulanması").foregroundColor(.black)
            }.modifier(KirmiziBanner())
            
            
            HStack{
                Text("Sembollere uygulanması")
                Image(systemName: "eyedropper")
                Image(systemName: "eyedropper.halffull")
                Image(systemName: "eyedropper.full")
            }.modifier(KirmiziBanner())
            
            
            Toggle("Toggle uygulama", isOn: $toggleDurum).modifier(KirmiziBanner())
            
            TextField("TextField uygulama", text:$txtVeri )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .modifier(KirmiziBanner())
            
            HStack{
                Text("Şekillere uygulanması")
                Circle().frame(height:30)
                RoundedRectangle(cornerRadius: 5)
            }.modifier(KirmiziBanner())
            
        }.background(Color.black.edgesIgnoringSafeArea(.vertical))
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
