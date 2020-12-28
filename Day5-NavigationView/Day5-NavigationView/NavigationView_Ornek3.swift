//
//  NavigationView_Ornek3.swift
//  Day5-NavigationView
//
//  Created by yunus olgun on 28.12.2020.
//

import SwiftUI

struct NavigationView_Ornek3: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray
                VStack(spacing:25) {
                    Image(systemName: "globe").font(.largeTitle)
                    Text("Navigationview").font(.largeTitle)
                    Text("Geri butonunu gizleme").foregroundColor(.gray)
                    Image("NavBarBackButonGizli")
                    NavigationLink("Detaylara git", destination: GeriButonGizliDetaylar())
                    Spacer()
                }.font(.title).padding(.top,70).foregroundColor(.white)
            }.navigationBarTitle("Navigation View")
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}


struct GeriButonGizliDetaylar: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.black
            
            VStack(spacing:25) {
                Image(systemName: "globe").font(.largeTitle)
                Text("Geri butonu gizli").foregroundColor(.gray)
                Image("NavBarBackButonGizli")
                Text("Buradaki NavBar'ın 'Geri butonu' yok. Çünkü onu gizledik").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white).layoutPriority(1)
                Button("Geri git") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                Spacer()
            }.font(.title).padding(.top,50)
            
        }.navigationBarTitle("Detaylar view",displayMode: .inline).edgesIgnoringSafeArea(.bottom).navigationBarBackButtonHidden(true)
    }
}

struct NavigationView_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView_Ornek3()
    }
}
