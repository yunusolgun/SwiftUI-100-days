//
//  ContentView.swift
//  Day106-Uygulama13
//
//  Created by yunus olgun on 28.02.2021.
//

import SwiftUI

struct ContentView: View {
    @State var selected = ""
    @State var show = false
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    self.show.toggle()
                }, label: {
                    Text("Menu Aç").padding(.vertical).padding(.horizontal,25)
                        .foregroundColor(.white)
                }).background(LinearGradient(gradient: Gradient(colors: [Color("Renk1"), Color("Renk2")]), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                
            }//VStack-1 bitişi
            
            
            VStack {
                Spacer()
                
                //Menü
                RadioButtons(selected: $selected, show: $show)
                    .offset(y: self.show ? (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 15 : UIScreen.main.bounds.height)
                
                
            }//VStack-2 bitişi
            .background(Color(UIColor.label.withAlphaComponent(self.show ? 0.2 : 0)).edgesIgnoringSafeArea(.all))
            
            
        }// ZStack bitişi
        .background(Color("Renk3")).edgesIgnoringSafeArea(.all).animation(.default)
        .frame(maxWidth:.infinity)
        .onTapGesture {
            self.show = false
        }
    }
}

var data = ["Alakalı","En yeniler","Fiyat (ucuzdan pahalıya)","Fiyat (pahalıdan ucuza)","Özelliklere göre","Kapasiteye göre"]



struct RadioButtons: View {
    @Binding var selected: String
    @Binding var show: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing:20){
            
            Text("Filtrele").font(.title).padding(.top)
            
            ForEach(data, id: \.self) { i in
                Button(action: {self.selected = i }, label: {
                    HStack{
                        Text("\(i)")
                        Spacer()
                        
                        ZStack {
                            Circle().fill(self.selected == i ? Color("Renk1") : Color.black.opacity(0.2))
                                .frame(width:18, height:18)
                            
                            if selected == i {
                                Circle().stroke(Color("Renk2"), lineWidth: 4)
                                    .frame(width: 25, height: 25)
                            }
                            
                        }
                        
                    }// HStack bitişi
                    .foregroundColor(.black)
                    
                })//Buton bitişi
                .padding(.top)
                
            } // Foreach bitişi
            
            HStack {
                Spacer()
                Button(action: {show.toggle()}, label: {
                    Text("Ürünleri getir").padding(.vertical).padding(.horizontal,25).foregroundColor(.white)
                }).background(selected != "" ?
                    LinearGradient(gradient: Gradient(colors: [Color("Renk1"), Color("Renk2")]), startPoint: .leading, endPoint: .trailing) :
                                LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.2), Color.black.opacity(0.4)]), startPoint: .leading, endPoint: .trailing)
                ).clipShape(Capsule())
                .disabled(selected != "" ? false : true)
            
            }.padding(.top)
            
        }//VStack bitişi
        .padding(.vertical).padding(.horizontal,25)
        .padding(.bottom, ((UIApplication.shared.windows.first?.safeAreaInsets.bottom)!) + 15)
        .background(Color.white).cornerRadius(30)
        .onTapGesture {
            self.show = true
            self.selected = ""
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
