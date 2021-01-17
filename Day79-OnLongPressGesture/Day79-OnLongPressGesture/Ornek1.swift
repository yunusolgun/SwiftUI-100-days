//
//  Ornek1.swift
//  Day79-OnLongPressGesture
//
//  Created by yunus olgun on 17.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var uzunBasiliyor = false
    @State private var normalBasiliyor = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("onLongPressGesture örnek-1")
            
            Text("onLongPressGesture ile bir view'e belirlie bir süre basıldıktan sonra aksiyonlar gerçekleştirilebilir").foregroundColor(.white).frame(maxWidth:.infinity).padding().background(Color.orange)
            Text("Açmak için uzun basın").foregroundColor(.red).bold()
            Image(systemName: uzunBasiliyor ? "lock.open.fill" : "lock.fill").font(.system(size: 100)).padding().foregroundColor(uzunBasiliyor ? .green: .red)
                .onLongPressGesture(minimumDuration: 1) { basiliyor in
                    self.normalBasiliyor = basiliyor
                } perform: {
                    self.uzunBasiliyor.toggle()
                }
            
            Text("Basmaya devam edin").opacity(normalBasiliyor ? 1:0)

        }.font(.title)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
