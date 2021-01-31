//
//  ContentView.swift
//  Day95-Uygulama2
//
//  Created by yunus olgun on 31.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Home().navigationTitle("Home").navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct Home: View {
    @State private var index = 0
    var body: some View {
        VStack {
            TabView(selection: $index) {
                Color.red.tag(0).tabItem { Image(systemName: "house.fill") }
                Color.blue.tag(1).tabItem { Image(systemName: "suit.heart.fill") }
                Color.black.tag(2).tabItem { Image(systemName: "gear") }
                Color.yellow.tag(3).tabItem { Image(systemName: "person.fill") }
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .navigationBarItems(trailing: Menu(content: {
                HStack {
                    //1.buton
                    Button(action: {
                        withAnimation {
                            index=0
                        }
                    }, label: {
                        HStack {
                            Text("Home")
                            Image(systemName: "house.fill")
                        }
                    })
                    
                    //2.buton
                    Button(action: {
                        withAnimation {
                            index=1
                        }
                    }, label: {
                        HStack {
                            Text("Loved")
                            Image(systemName: "suit.heart.fill")
                        }
                    })
                    
                    //3.buton
                    Button(action: {
                        withAnimation {
                            index=2
                        }
                    }, label: {
                        HStack {
                            Text("Settings")
                            Image(systemName: "gear")
                        }
                    })
                    
                    //4.buton
                    Button(action: {
                        withAnimation {
                            index=3
                        }
                    }, label: {
                        HStack {
                            Text("Account")
                            Image(systemName: "person.fill")
                        }
                    })
                    
                    
                }
            }, label: {
                Image(systemName: "line.horizontal.3")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
