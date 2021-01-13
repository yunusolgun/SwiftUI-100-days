//
//  Ornek2.swift
//  Day70-ListStyle
//
//  Created by yunus olgun on 13.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20){
            Text("ListStyle Örnek - 2").font(.largeTitle)
            Text("Seperator (ayraç) kaldırma").font(.title)
            
            List {
                Text("Bugün hava çok güzel")
                Button("Detaylar", action: {})
                Text("3.Satır")
            }.modifier(ListSeperatorKaldir())
            
        }
    }
}


public struct ListSeperatorKaldir: ViewModifier {
    public func body(content: Content) -> some View {
        content.onAppear(perform: {
            UITableView.appearance().separatorStyle = .none
        }).onDisappear(perform: {
            UITableView.appearance().separatorStyle = .singleLine
        })
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
