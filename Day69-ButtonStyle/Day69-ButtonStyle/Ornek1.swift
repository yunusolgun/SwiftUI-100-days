//
//  Ornek1.swift
//  Day69-ButtonStyle
//
//  Created by yunus olgun on 12.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20){
            Text("ButtonStyle Örnek - 1").font(.largeTitle)
            Text("SwiftUI hazır buton stilleri").font(.title).frame(maxWidth:.infinity).padding().background(Color.red).foregroundColor(.white)
            
            Group {
                
                Button("DefaultButtonStyle", action: {}).buttonStyle(DefaultButtonStyle())
                Button("PlainButtonStyle", action: {}).buttonStyle(PlainButtonStyle())
                Button("BorderlessButtonStyle", action: {}).buttonStyle(BorderlessButtonStyle())
                
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "square.and.arrow.up").font(.title)
                        Text("Paylaş").fontWeight(.semibold).font(.title)
                    }.frame(minWidth:0,maxWidth: .infinity).padding().foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [Color("KoyuYesil"), Color("AcikYesil")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(40).padding(.horizontal,25)
                }
                
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "square.and.pencil").font(.title)
                        Text("Düzenle").fontWeight(.semibold).font(.title)
                    }.frame(minWidth:0,maxWidth: .infinity).padding().foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [Color("KoyuYesil"), Color("AcikYesil")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(40).padding(.horizontal,25)
                }
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "trash").font(.title)
                        Text("Sil").fontWeight(.semibold).font(.title)
                    }.frame(minWidth:0,maxWidth: .infinity).padding().foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [Color("KoyuYesil"), Color("AcikYesil")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(40).padding(.horizontal,25)
                }
              
            }
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
