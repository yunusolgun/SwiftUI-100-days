//
//  Ornek1_Button.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek1_Button: View {
    @State private var showButtons = false
    
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            VStack(spacing:20) {
                Text("Triggers").font(.largeTitle)
                Text("Button").foregroundColor(.gray).font(.title)
                Spacer()
            }.frame(maxWidth:.infinity)
            
            Group {
                
                Button(action: {self.showButtons.toggle()}, label: {
                    Image(systemName: "bag.badge.plus")
                        .padding(.all,24)
                        .rotationEffect(.degrees(showButtons ? 0 : 90), anchor: .center)
                }).background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: 0, y: showButtons ? -150 : 0)
                .opacity(showButtons ? 1 : 0)
                
                
                Button(action: {self.showButtons.toggle()}, label: {
                    Image(systemName: "gauge.badge.plus")
                        .padding(.all,24)
                        .rotationEffect(.degrees(showButtons ? 0 : 90), anchor: .center)
                }).background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: showButtons ? -110 : 0, y: showButtons ? -110 : 0)
                .opacity(showButtons ? 1 : 0)
                
                
                Button(action: {self.showButtons.toggle()}, label: {
                    Image(systemName: "calendar.badge.plus")
                        .padding(.all,24)
                        .rotationEffect(.degrees(showButtons ? 0 : 90), anchor: .center)
                }).background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: showButtons ? -150 : 0, y: 0)
                .opacity(showButtons ? 1 : 0)
                
                
                Button(action: {self.showButtons.toggle()}, label: {
                    Image(systemName: "plus")
                        .padding(.all,24)
                        .rotationEffect(.degrees(showButtons ? 45 : 0), anchor: .center)
                }).background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                
                
            }.padding(.trailing,20)
            .accentColor(.white)
            .animation(.default)
            
        }.font(.title)
    }
}

struct Ornek1_Button_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1_Button()
    }
}
