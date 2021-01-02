//
//  ActionSheet_Ornek1.swift
//  Day26-ActionSheet
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct ActionSheet_Ornek1: View {
    
    @State private var gorunsunActionSheet = false
    
    var sheetAction = ActionSheet(title: Text("Action Sheet Başlık"),
                                  message: Text("Action sheet mesajı"),
                                  buttons: [.default(Text("Varsayılan buton")) {
                                    //varsayılan butona basılınca işletilecek kodlar
                                  },
                                  .destructive(Text("Destructive buton")){
                                    
                                  },
                                  .cancel()
                                  ])
    
    var body: some View {
        VStack(spacing:20) {
            Text("Action Sheet Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Button("Action Sheet yapısını göster") {
                self.gorunsunActionSheet = true
            }
            
            Spacer()
        }.actionSheet(isPresented: $gorunsunActionSheet, content: {
            self.sheetAction
        })
    }
}

struct ActionSheet_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet_Ornek1()
    }
}
