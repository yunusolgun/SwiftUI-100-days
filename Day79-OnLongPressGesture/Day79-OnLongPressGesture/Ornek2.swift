//
//  Ornek2.swift
//  Day79-OnLongPressGesture
//
//  Created by yunus olgun on 17.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State private var daireRenk: Color = .yellow
    
    var body: some View {
        VStack(spacing:20) {
            Text("onLongPressGesture Örnek-2").font(.title)
            Circle()
                .foregroundColor(daireRenk)
                .frame(width: 200, height: 200, alignment: .center)
                .gesture(LongPressGesture(minimumDuration: 2).onEnded({ _ in
                    self.daireRenk = self.daireRenk == .yellow ? .red : .yellow
                }))
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
