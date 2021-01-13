//
//  ListOrnek3.swift
//  Day70-ListStyle
//
//  Created by yunus olgun on 13.01.2021.
//

import SwiftUI

struct ListOrnek3: View {
    private var koyuMavi: Color = Color.init(hue: 0.65, saturation: 0.4, brightness: 0.22)
    var body: some View {
        VStack(spacing:20){
            Text("ListStyle örnek -3").font(.largeTitle)
            Text("list style background atama").font(.title).foregroundColor(.gray)
            
            List {
                Text("Satır-1")
                Text("Satır-2")
                Text("Satır-3").listRowBackground(Color.orange)
            }.foregroundColor(.white)
            .background(koyuMavi)
            .modifier(ListBackground())
            
            
        }
    }
}

public struct ListBackground: ViewModifier {
    var arkaplanRenk: Color = .black
    public func body(content: Content) -> some View {
        content.background(arkaplanRenk).onAppear(perform: {
            UITableView.appearance().backgroundColor = .clear
            UITableViewCell.appearance().backgroundColor = .clear
        }).onDisappear(perform: {
            UITableView.appearance().backgroundColor = .systemBackground
            UITableViewCell.appearance().backgroundColor = .systemBackground
        })
    }
}

struct ListOrnek3_Previews: PreviewProvider {
    static var previews: some View {
        ListOrnek3()
    }
}
