//
//  ContentView.swift
//  Day2-DatePicker
//
//  Created by yunus olgun on 26.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tarihVerisi = Date()
    
    var body: some View {
        VStack(spacing:20) {
            Text("DatePicker Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("DatePicker nesnesinden değer almak veya atamak için ona bir değişken atamamız gerekiyor.").font(.title).frame(maxWidth:.infinity).padding().foregroundColor(.white).background(Color.pink)
            
            HStack {
                Spacer()
                Image(systemName: "moon.circle")
                Spacer()
                Circle().frame(width:65, height: 65)
                Spacer()
                Image(systemName: "moon.circle.fill")
                Spacer()
            }.foregroundColor(.pink).font(.largeTitle)
            
            DatePicker("", selection: $tarihVerisi, displayedComponents: .date)
            
            Text("DatePicker'in sağda olduğuna ve sol tarafta boş bir alan olduğuna dikkat edin").font(.title).frame(maxWidth:.infinity).padding().background(Color.yellow)

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
