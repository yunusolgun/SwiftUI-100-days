//
//  Ornek1.swift
//  Day43-ScaledToFill
//
//  Created by yunus olgun on 5.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:30) {
            Text("Scaled to Fill Örnek -1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            Text("ScaledToFill metodunu kullanarak view içeriğinin boyutu, viewinin tüm alanını kaplamasını sağlayacak şekilde arttırabilirsiniz")
            
            Text("Ölçekleme işlemi yok").font(.system(size: 22))
            HStack {
                Circle().fill(Color.yellow).frame(width:145,height:145).border(Color.red, width: 5)
                Image("manzara").resizable().frame(width:145,height:145).border(Color.blue, width: 5)
                Text("Manzara fotoğrafı").frame(width:50, height:50).border(Color.black, width: 5)
            }
            
            Text("Ölçekleme işlemi var(ScaledToFill)").font(.system(size: 22, weight:.bold))
            HStack {
                Circle().fill(Color.yellow).scaledToFill().frame(width:150,height: 100).border(Color.red, width: 5)
                Image("manzara").resizable().scaledToFill().frame(width:150,height: 100).border(Color.blue, width: 5)
                Text("Manzara fotoğrafı").scaledToFill().frame(width:50, height:50).border(Color.black, width: 5)
                
            }
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
