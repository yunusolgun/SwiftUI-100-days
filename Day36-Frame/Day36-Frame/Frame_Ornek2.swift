//
//  Frame_Ornek2.swift
//  Day36-Frame
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Frame_Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Frame Örnek - 2").font(.largeTitle)
            Text("Şekiler tüm boşluğu doldurabilir. Frame kullanarak bunu sınırla.")
            
            HStack {
                Capsule().foregroundColor(.pink).frame(width: 150, height: 100)
                Rectangle().foregroundColor(.blue).frame(width: 150, height: 75)
            }
            
            Text("Butonlar içeriğine göre boyutlandırılır. Fakat frame'i kullanarak içeriğinden çok daha büyük boyutlara sahip olmasını sağlıyabiliriz.").padding().background(Color.orange).foregroundColor(.white)
            
            Button(action: {}) {
                Text("Button")
            }.frame(width: 200, height: 200).background(Color.yellow).border(Color.pink)
         
            Group {
                HStack{
                    Button(action: {}) {
                        Text("Üst")
                    }.frame(width: 150, height: 150,alignment: .top).background(Color.yellow).border(Color.red)
                    
                    Button(action: {}) {
                        Text("Alt")
                    }.frame(width: 150, height: 150,alignment: .bottom).background(Color.yellow).border(Color.red)
                    
                }
                
                HStack{
                    Button(action: {}) {
                        Text("Leading")
                    }.frame(width: 150, height: 150,alignment: .leading).background(Color.yellow).border(Color.red)
                    
                    Button(action: {}) {
                        Text("Trailing")
                    }.frame(width: 150, height: 150,alignment: .trailing).background(Color.yellow).border(Color.red)
                    
                }
            }
        }
    }
}

struct Frame_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Frame_Ornek2()
    }
}
