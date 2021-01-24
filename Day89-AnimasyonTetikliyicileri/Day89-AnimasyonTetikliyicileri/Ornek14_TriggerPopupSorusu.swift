//
//  Ornek14_TriggerPopupSorusu.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek14_TriggerPopupSorusu: View {
    @State private var showPopup = true
    @GestureState private var popupOffset = CGSize.zero
    
    var body: some View {
        ZStack {
            
            VStack(spacing:20) {
                Text("Trigger").font(.largeTitle)
                Text("Popup Soru Çözümü").font(.title).foregroundColor(.gray)
                Spacer()
                
                Button("Popup Göster") {
                    self.showPopup = true
                }.font(.title)
                
            }.blur(radius: showPopup ? 2 : 0)
            .animation(.easeOut)
            
            if showPopup {
                ZStack {
                    Color.black
                        .opacity(0.4)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            self.showPopup = false
                        }
                    
                    VStack(spacing:20) {
                        Text("Paneli ekranda sürükleyebilirsiniz")
                            .padding(.all, 15)
                            .frame(maxWidth: .infinity)
                            .background(Color.yellow)
                        Spacer()
                        Text("Paneli kapatmak için ekranın herhangi bir yerine dokunabilirsiniz").padding(.horizontal, 10)
                        Spacer()
                        Button("Veya kapat butonuna basabilirsiniz") {
                            self.showPopup = false
                        }.padding(.bottom, 15)
                    }.frame(height:300)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .padding(.horizontal,25)
                    .offset(popupOffset)
                    .gesture(DragGesture(minimumDistance: 100).updating($popupOffset, body: { (value, popupOffset, transaction) in
                        popupOffset = value.translation
                    }).onEnded({ value in
                        self.showPopup = false
                    }))
                    
                }.animation(.default)
                
            }
            
        }.animation(.easeIn)
    }
}

struct Ornek14_TriggerPopupSorusu_Previews: PreviewProvider {
    static var previews: some View {
        Ornek14_TriggerPopupSorusu()
    }
}
