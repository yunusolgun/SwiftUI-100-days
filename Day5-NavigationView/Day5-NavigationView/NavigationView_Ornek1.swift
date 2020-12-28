//
//  NavigationView_Ornek1.swift
//  Day5-NavigationView
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct NavigationView_Ornek1: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink
                
                VStack(spacing:25) {
                    Image(systemName: "globe").font(.largeTitle).foregroundColor(.white)
                    Text("Navigation View").font(.largeTitle).foregroundColor(.white)
                    Text("Giriş Örnek").font(.title).foregroundColor(.gray)
                    Text("NavigationView'deBar alanında navigationBarTitle metoduyla bir başlık eklemediğiniz sürece boş görünecek").frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.blue).font(.title)
                    Spacer()
                }
            }.navigationTitle("Navigation Viewler")
            .edgesIgnoringSafeArea(.bottom)
        
        }
    }
}

struct NavigationView_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_Ornek1()
    }
}
