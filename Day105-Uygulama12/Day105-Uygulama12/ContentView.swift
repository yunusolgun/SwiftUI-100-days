//
//  ContentView.swift
//  Day105-Uygulama12
//
//  Created by yunus olgun on 28.02.2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Home()
                .navigationTitle("Github kullanıcıları")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct JSONData: Identifiable, Decodable {
    var id: Int
    var login: String
    var avatar_url: String
    var followers_url: String
}

func getUserData(url: String, completion: @escaping ([JSONData]) -> () ) {
    
    let session = URLSession(configuration: .default)
    session.dataTask(with: URL(string: url)!) { (data, _, err) in
        if let err = err {
            print("Veriler alınamadı : \(err.localizedDescription)")
            return
        }
        
        do {
            if let data = data {
                let users = try JSONDecoder().decode([JSONData].self, from: data)
                completion(users)
            }
            
        } catch {
            print("Hata oluştu : \(error.localizedDescription)")
            
        }
        
    }.resume()
    
    
}

struct Home: View {
    @State var users: [JSONData] = []
    
    var body: some View {
        VStack {
            if users.isEmpty {
                Spacer()
                Text("Kişiler yükleniyor").font(.title).fontWeight(.bold)
                ProgressView()
                Spacer()
            } else {
                //Veriler yüklendi. Kullanıcılar listeleniyor
                
                List(users) { user in
                    //Row View
                    NavigationLink(
                        destination: DetailView(user: user),
                        label: {
                            RowView(user: user)
                        })
                }
                
            }
            
        }//VStack bitişi
        .navigationBarItems(trailing: Button(action: {
            users.removeAll()
            getUserData(url: "https://api.github.com/users") { (users) in
                self.users = users
            }
        }, label: {
            Image(systemName: "arrow.clockwise")
        }))
        .onAppear(perform: {
            getUserData(url: "https://api.github.com/users") { (users) in
                self.users = users
            }
        })
    }
}

struct DetailView: View {
    var user: JSONData
    @State var followers: [JSONData] = []
    @State var isEmpty = false
    
    var body: some View {
        VStack {
            if followers.isEmpty {
                Spacer()
                
                if isEmpty {
                    Text ("Hiç takipçisi yok").fontWeight(.bold)
                } else {
                    Text ("Bilgiler yükleniyor").fontWeight(.bold)
                    ProgressView()
                }
                
                Spacer()
            } else {
                
                //Verilerin listelenmesi
                
                List {
                    Text("Takipçiler")
                    ForEach(followers) { follower in
                        RowView(user: follower)
                    }
                }
                

            }
        } // VStack bitişi
        .navigationTitle(user.login)
        .onAppear(perform: {
            //Kullanıcı takipçi bilgilerinin yüklenmesi
            getUserData(url: user.followers_url) { (followers) in
                if followers.isEmpty {
                    self.isEmpty = true
                } else {
                    self.followers = followers
                }
            }
        })
    }
}


struct RowView : View {
    var user: JSONData
    
    var body: some View {
        HStack(spacing:15) {
            AnimatedImage(url: URL(string: user.avatar_url)!)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .shadow(radius: 5)
            
            Text(user.login).fontWeight(.bold).foregroundColor(.black)
            
            
        }.padding(.vertical,5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
