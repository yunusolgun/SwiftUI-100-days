//
//  TextView_Ornek4.swift
//  Day12-Text
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TextView_Ornek4: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Text truncate")
            Text("Hiç kimse asla baştan başlayamaz, en azından benim deneyimlerime göre.").padding(.horizontal).lineLimit(1).truncationMode(.head)
            
            Text("Hiç kimse asla baştan başlayamaz, en azından benim deneyimlerime göre.").padding(.horizontal).lineLimit(1).truncationMode(.middle)
            
            Text("Hiç kimse asla baştan başlayamaz, en azından benim deneyimlerime göre.").padding(.horizontal).lineLimit(1).truncationMode(.tail)
            
            Spacer()
            
            Text("Birden fazla text nesnesi ") +
                Text("artı işaretiyle ").bold().foregroundColor(.red) +
            Text("birleştirilip tek bir") +
                Text("Text View Nesnesi").font(.title).underline() +
            Text(" şeklinde kullanılabilir")
        }
    }
}

struct TextView_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        TextView_Ornek4()
    }
}
