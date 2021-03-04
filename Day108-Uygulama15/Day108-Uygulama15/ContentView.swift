//
//  ContentView.swift
//  Day108-Uygulama15
//
//  Created by yunus olgun on 4.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}

var menu = ["Yeni","Popüler","Çok satanlar","Öne çıkanlar", "Outlet"]

struct Home: View {
    @State var search = ""
    @State var index = 0
    @State var tabIndex = 1
    
    var body: some View {
        ZStack {
            Image("arkaPlan").resizable().aspectRatio(contentMode: .fill).frame(width:UIScreen.main.bounds.width).blur(radius: 35,opaque: true)
            
            VStack(spacing:0) {
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack {
                        
                        HStack {
                            Button(action: {}, label: {
                                Image("menu").renderingMode(.original)
                            })
                            
                            Spacer()
                            
                            Image("profilGoruntu").resizable().aspectRatio(contentMode: .fill).frame(width: 40, height: 40).clipShape(Circle())
                        }.padding()
                        
                        
                        HStack {
                            Text("Alışveriş fırsatlarını\nkaçırmayın").font(.system(size: 30)).foregroundColor(.black)
                            Spacer()
                            
                        }.padding(.horizontal)
                        
                        
                        HStack(spacing:25) {
                            Image(systemName: "magnifyingglass").font(.system(size: 22)).foregroundColor(.black)
                            VStack(alignment:.leading) {
                                TextField("Ara", text: $search)
                                Divider().background(Color.black)
                            }
                            
                        }.padding()
                        
                        
                        HStack(spacing:15) {
                            ForEach(0..<menu.count, id:\.self) { i in
                                Button(action: {index = i}, label: {
                                    VStack(spacing:8){
                                        Text(menu[i]).foregroundColor(.black).fontWeight(index == i ? .bold: .none).font(.system(size: 14))
                                        
                                        Circle().fill(Color.black).frame(width:6, height:6).opacity(index == i ? 1:0)
                                    }.padding(.vertical)
                                })
                            }
                        }.padding(.top,10)
                        
                        
                        HStack(spacing:15) {
                            VStack(alignment:.leading, spacing:10) {
                                ZStack {
                                    BlurView(style: .regular)
                                    Image("giysi1").resizable().aspectRatio(contentMode: .fit)
                                    
                                    VStack {
                                        HStack {
                                            Button(action: {}, label: {
                                                Image(systemName: "suit.heart.fill").foregroundColor(.red).padding().background(Color.white).clipShape(Circle())
                                            })
                                            
                                            Spacer()
                                        }
                                        
                                        Spacer()
                                    }.padding()
                                    
                                }//Zstack bitişi
                                .frame(width: (UIScreen.main.bounds.width - 45)/2 , height:250).cornerRadius(15)
                                
                                Text("Yaz seçeneği").font(.system(size: 14))
                                Text("139₺").fontWeight(.bold)
                                
                            }//VStack bitişi
                            
                            VStack(alignment:.leading, spacing:10) {
                                ZStack {
                                    BlurView(style: .regular)
                                    Image("giysi2").resizable().aspectRatio(contentMode: .fit)
                                    
                                    VStack {
                                        HStack {
                                            Button(action: {}, label: {
                                                Image(systemName: "suit.heart.fill").foregroundColor(.red).padding().background(Color.white).clipShape(Circle())
                                            })
                                            
                                            Spacer()
                                        }
                                        
                                        Spacer()
                                    }.padding()
                                    
                                }//Zstack bitişi
                                .frame(width: (UIScreen.main.bounds.width - 45)/2 , height:250).cornerRadius(15)
                                
                                Text("Bayram fırsatı").font(.system(size: 14))
                                Text("159₺").fontWeight(.bold)
                                
                            }//VStack bitişi
                        } // HStack bitişi
                        .padding()
                        
                        
                        HStack{
                            Text("Yeni koleksiyonlar").font(.system(size: 22)).foregroundColor(.black)
                            Spacer()
                        }.padding(.horizontal).padding(.top,10)
                        
                        
                        ZStack {
                            BlurView(style:.regular)
                            HStack {
                                VStack(alignment: .leading, spacing:10) {
                                    Text("Casual").foregroundColor(.black)
                                    Text("299₺").font(.system(size: 20)).fontWeight(.bold)
                                    
                                    Button(action: {}, label: {
                                        Text("Şimdi dene").foregroundColor(.black).padding(.vertical,10).padding(.horizontal,20)
                                            .background(Color.white)
                                            .clipShape(Capsule())
                                    }).padding(.top,10)
                                    
                                }
                                
                                Image("giysi3").resizable().aspectRatio(contentMode: .fit)
                                
                            }//HStack bitişi
                            
                            VStack {
                                HStack{
                                    Button(action: {}, label: {
                                        Image(systemName: "suit.heart.fill").foregroundColor(.red).padding(.all,10).background(Color.white).clipShape(Circle())
                                    })
                                    
                                    Spacer()
                                }
                                
                                Spacer()
                            }.padding(.all)
                            
                        }.frame(height:250).cornerRadius(15).padding()
                        
                        Spacer()
                        
                        
                        
                    }//VStack bitişi
                    .padding(.bottom).padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    
                })//ScrollView bitişi
                
                
                HStack(spacing:0){
                    Button(action: {tabIndex = 0}, label: {
                        Image(systemName: "suit.heart.fill").font(.system(size: 20)).foregroundColor(tabIndex == 0 ? .white: Color("Renk1")).padding()
                            .background(Color("Renk1").opacity(tabIndex == 0 ? 1:0))
                            .clipShape(Circle())
                    })
                    
                    Spacer()
                 
                    Button(action: {tabIndex = 1}, label: {
                        Image(systemName: "house.fill").font(.system(size: 20)).foregroundColor(tabIndex == 1 ? .white: Color("Renk1")).padding()
                            .background(Color("Renk1").opacity(tabIndex == 1 ? 1:0))
                            .clipShape(Circle())
                    })
                    
                    Spacer()
                    
                    Button(action: {tabIndex = 2}, label: {
                        Image(systemName: "cart.fill").font(.system(size: 20)).foregroundColor(tabIndex == 2 ? .white: Color("Renk1")).padding()
                            .background(Color("Renk1").opacity(tabIndex == 2 ? 1:0))
                            .clipShape(Circle())
                    })
                    
                    
                    
                }.padding([.horizontal,.top])
                .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15: UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                .background(BlurView(style: .regular))
                .clipShape(CShape())
                .shadow(radius: 4)
                
                
            }//VStack bitişi
            
        }.edgesIgnoringSafeArea(.all)
    }
}


struct CShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
