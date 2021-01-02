//
//  Alert_Ornek1.swift
//  Day27-Alert
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Alert_Ornek1: View {
    
    @State private var gorunsunAlert = false
    
    var mesajAlert = Alert(title: Text("Başlık"),
                           message: Text("Alert Mesajı"),
                           primaryButton: .default(Text("Sol Buton")) {
                            //primary button'a basıldığında yapılacaklar
                            
                           },
                           secondaryButton: .destructive(Text("Sağ Buton"),action: {
                            //secondary button'a basıldığında yapılacaklar
                            
                           }))
    
    @State private var txtYasi = ""
    
    var body: some View {
        VStack(spacing:20) {
            Text("Alert Örnek - 1").font(.largeTitle)
            
            VStack {
                HStack {
                    Text("Yaşınız: ")
                    TextField("Yaşınızı girin",text: $txtYasi)
                }
                
                Button("Kaydet") {
                    if Int(self.txtYasi)! > 18 {
                        self.gorunsunAlert = true
                    }
                }
                
            }
            Spacer()
            
        }.padding().alert(isPresented: $gorunsunAlert, content: {
            self.mesajAlert
        })
    }
}

struct Alert_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Alert_Ornek1()
    }
}
