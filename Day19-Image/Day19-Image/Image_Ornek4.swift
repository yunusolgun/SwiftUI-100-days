//
//  Image_Ornek4.swift
//  Day19-Image
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Image_Ornek4: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Image SF Örnek - 1").font(.largeTitle)
            Text("SF sembolleri").font(.title).foregroundColor(.gray)
            
            HStack(spacing:40) {
                Image(systemName: "cloud.sun.fill")
                Image(systemName: "cloud.sun.rain.fill")
                Image(systemName: "cloud.sun.bolt.fill")
            }
            
            HStack(spacing:40) {
                Image(systemName: "cloud.sun.fill").foregroundColor(.blue)
                Image(systemName: "cloud.sun.rain.fill").foregroundColor(.red)
                Image(systemName: "cloud.sun.bolt.fill").foregroundColor(.green)
            }
            
            HStack(spacing:40) {
                Image(systemName: "thermometer.sun").imageScale(.large)
                Image(systemName: "thermometer.sun").imageScale(.medium)
                Image(systemName: "thermometer.sun").imageScale(.small)
            }
            
            HStack(spacing:40) {
                Image(systemName: "thermometer.sun").font(.largeTitle)
                Image(systemName: "thermometer.sun").font(.title)
                Image(systemName: "thermometer.sun").font(.body)
                Image(systemName: "thermometer.sun").font(.footnote)
            }
            
            HStack(spacing:40) {
                Image(systemName: "thermometer.sun").font(.system(size: 60))
                Image(systemName: "thermometer.sun").font(.system(size: 50))
                Image(systemName: "thermometer.sun").font(.system(size: 40))
                Image(systemName: "thermometer.sun").font(.system(size: 30))
            }
            
            HStack(spacing:40) {
                Image(systemName: "moon.stars").font(Font.largeTitle.weight(.ultraLight))
                Image(systemName: "moon.stars").font(Font.largeTitle.weight(.regular))
                Image(systemName: "moon.stars").font(Font.largeTitle.weight(.semibold))
                Image(systemName: "moon.stars").font(Font.largeTitle.weight(.bold))
                Image(systemName: "moon.stars").font(Font.largeTitle.weight(.black))
            }
            
            HStack(spacing:40) {
                Image(systemName: "moon.zzz").font(.system(size: 60, weight: .bold))
                Image(systemName: "moon.zzz").font(.system(size: 60, weight: .light))
                Image(systemName: "moon.zzz").font(.system(size: 60, weight: .regular))
                Image(systemName: "moon.zzz").font(.system(size: 60, weight: .ultraLight))
            }
            
        }
    }
}

struct Image_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        Image_Ornek4()
    }
}
