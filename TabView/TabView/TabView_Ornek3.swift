//
//  TabView_Ornek3.swift
//  TabView
//
//  Created by yunus olgun on 31.12.2020.
//

import SwiftUI

struct TabView_Ornek3: View {
    var body: some View {
        TabView {
            
            // 1.SEKME
            Text("Arama Ekranı").tabItem {
                Image(systemName: "phone")
                Text("Ara")
            }
            
            // 2 .SEKME
            Text("Giden tüm aramalar bu sayfada yer alacak").tabItem {
                Image(systemName: "phone.arrow.up.right")
                Text("Giden aramalar")
            }
            
            // 3 .SEKME
            Text("Gelen tüm aramalar bu sayfada yer alacak").tabItem {
                Image(systemName: "phone.arrow.down.left")
                Text("Gelen aramalar")
            }
            
            // 4 .SEKME
            Text("Telefondaki tüm herkesin numaraları").tabItem {
                Image(systemName: "book")
                Text("Rehber")
            }
            
            // 5 .SEKME
            Text("Arama geçmişinizin olduğu ekran").tabItem {
                Image(systemName: "clock")
                Text("Geçmiş")
            }
            
            // 6 .SEKME
            Text("Yeni telefon numarasını ekle").tabItem {
                Image(systemName: "phone.badge.plus")
                Text("Yeni")
            }
            
        }
    }
}

struct TabView_Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        TabView_Ornek3()
    }
}
