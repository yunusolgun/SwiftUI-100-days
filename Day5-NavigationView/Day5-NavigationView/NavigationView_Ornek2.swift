//
//  NavigationView_Ornek2.swift
//  Day5-NavigationView
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct NavigationView_Ornek2: View {
    @State private var gizli = true
    var body: some View {
        NavigationView {
            ZStack {
                Color.orange
                
                VStack (spacing:20) {
                    Image(systemName: "globe").font(.largeTitle)
                    Text("Navigation View").font(.largeTitle)
                    Text("NavigationBar gizleme").foregroundColor(.blue)
                    Image("NavBarGizli")
                    Text("NavigationBar'ın görünmesini istemiyorsanız onu navigationBarHidden fonksiyonuyla gizleyebilirsiniz")
                    Toggle("Nav Bar gizle", isOn: $gizli).padding()
                    Spacer()
                }.foregroundColor(.white).font(.title).padding(.top,70)
                
            }.navigationBarHidden(gizli)
            .navigationBarTitle("Navigation View 2.örnek", displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(leading:
                                    Button(action: {}) {
                                        Image(systemName: "bell.fill")
                                    }.foregroundColor(.purple)
                                , trailing:
                                    Button("Ekle",action: {}).accentColor(.red)
            )
        }
    }
}

struct NavigationView_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_Ornek2()
    }
}
