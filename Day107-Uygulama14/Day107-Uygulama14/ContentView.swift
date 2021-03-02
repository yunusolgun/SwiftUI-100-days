//
//  ContentView.swift
//  Day107-Uygulama14
//
//  Created by yunus olgun on 2.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Home: View {
    @State var index = 1
    var body: some View {
        
        VStack {
            
            VStack {
                
                HStack{
                    Button(action: {}, label: {
                        Image(systemName: "arrow.left").font(.system(size: 24)).foregroundColor(Color("Text"))
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "suit.heart.fill").font(.system(size: 24)).foregroundColor(.white).padding(10).background(Color("Renk2")).clipShape(Circle()).shadow(radius: 4)
                    })
                }//Hstack bitişi
                .padding([.horizontal, .top])
                
                
                HStack(spacing:15) {
                    
                    VStack(alignment:.leading, spacing:12) {
                        
                        Group {
                            Text("Marka").font(.system(size: 20)).fontWeight(.bold)
                            Text("iOS Giyim")
                            
                            Text("Ürün kodu").font(.system(size: 20)).fontWeight(.bold).padding(.top,10)
                            Text("TWSS0021")
                            
                            Text("Pamuk").font(.system(size: 20)).fontWeight(.bold).padding(.top,10)
                            Text("%100")
                            
                            Text("Renk").font(.system(size: 20)).fontWeight(.bold).padding(.top,10)
                            
                        }.foregroundColor(Color("Text"))
                        
                        
                        HStack(spacing:12) {
                            
                            //Sarı button
                            Button(action: { index = 1}, label: {
                                Circle().fill(Color.yellow).frame(width: index == 1 ? 30: 20, height: index == 1 ? 30: 20 )
                            })
                            
                            //Yeşil button
                            Button(action: { index = 2}, label: {
                                Circle().fill(Color.green).frame(width: index == 2 ? 30: 20, height: index == 2 ? 30: 20 )
                            })
                            
                            //Turuncu button
                            Button(action: { index = 3}, label: {
                                Circle().fill(Color.orange).frame(width: index == 3 ? 30: 20, height: index == 3 ? 30: 20 )
                            })
                            
                        }//HStack bitişi
                        .padding(.top,10)
                        
                    }//Vstack bitişi
                    
                    Spacer()
                    
                    Image("Urun\(index)").resizable().aspectRatio(contentMode: .fit).padding(.leading)
                    
                } //Hstack bitişi
                .padding()

                
                
                
            }//VStack bitişi
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom,25)
            .background(Color("Renk1"))
            .clipShape(CustomShape())
            
            
            if UIScreen.main.bounds.height < 750 {
                ScrollView(.vertical, showsIndicators: false){
                    BottomView()
                }
            } else {
                BottomView()
            }
            
            Spacer()
            
        }//VStack bitişi
        .edgesIgnoringSafeArea(.top)
        
    }
}


var sizes = ["XS","S","M","L","XL","XXL"]

struct BottomView: View {
    @State var selectedSize = "XS"
    @State var count = 1
    
    var body: some View {
        HStack(spacing:15) {
            Text("Kazak").font(.system(size: 35)).foregroundColor(.black)
            Spacer()
            Text("125₺").font(.system(size: 20)).foregroundColor(Color("Renk2")).strikethrough(true, color: Color("Renk2"))
            Text("45₺").font(.system(size: 20)).fontWeight(.bold).foregroundColor(.black)
        }//HStack bitişi
        .padding()
        
        
        VStack(alignment: .leading, spacing: 15){
            Text("Beden").fontWeight(.bold)
            
            HStack(spacing:15) {
                ForEach(sizes,id:\.self) { s in
                    Button(action: {selectedSize = s}, label: {
                        Text(s).font(UIScreen.main.bounds.height < 750 ? .caption : .body)
                            .foregroundColor(selectedSize == s ? .white : .black)
                            .padding(.vertical,8).padding(.horizontal,10)
                            .background(ZStack{
                                RoundedRectangle(cornerRadius: 5).fill(Color("Renk2").opacity(selectedSize == s ? 1: 0))
                                RoundedRectangle(cornerRadius: 5).stroke(Color("Renk2"), lineWidth: 1)
                            })
                    })
                }
            }//HStack bitişi
            
            Text("Ürün bilgileri").fontWeight(.bold).padding(.top,10)
            Text("Uzun Model. Örme kumaş. Desenli kumaş. Yüksek yakalı. Uzun kollu. Zincir süslemeli").foregroundColor(.gray).multilineTextAlignment(.leading)
            
        }.padding(.horizontal)
        
        
        HStack(spacing:15) {
            Button(action: { count += 1}, label: {
                Image(systemName: "plus").font(.system(size: 20)).foregroundColor(Color("Renk2")).padding().background(Color.white).clipShape(Circle()).shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            })
            
            Text("\(count)").font(.title).fontWeight(.bold)
            
            Button(action: {
                if count > 1 { count -= 1 }
            }, label: {
                Image(systemName: "minus").font(.system(size: 26)).foregroundColor(Color("Renk2")).padding().background(Color.white).clipShape(Circle()).shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Sepete ekle").foregroundColor(.white).fontWeight(.bold).padding(.vertical).padding(.horizontal, UIScreen.main.bounds.height < 750 ? 20: 40).background(Color("Renk2")).clipShape(Capsule())
            })
            
        } // HStack bitişi
        .padding(.horizontal).padding(.vertical, 30)
        
        
    }
    
}



struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: UIScreen.main.bounds.height < 750 ? 30: 45, height: UIScreen.main.bounds.height < 750 ? 30: 45)).cgPath
        
        return Path(path)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
