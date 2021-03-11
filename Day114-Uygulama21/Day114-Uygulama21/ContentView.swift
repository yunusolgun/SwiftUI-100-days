//
//  ContentView.swift
//  Day114-Uygulama21
//
//  Created by yunus olgun on 11.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Home().navigationBarHidden(true).navigationBarBackButtonHidden(true)
        }
    }
}


struct Home: View {
    @State var txt = ""
    @State var show = false
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            HStack(spacing:10) {
                Button(action: {}, label: {
                    Image("menu").renderingMode(.original)
                })
                
                Image("logo")
                
                Spacer()
                
                Button(action: {}, label: {
                    Image("bildirim").renderingMode(.original)
                })
            }
            
            
            
            HStack(spacing:15) {
                Image(systemName: "magnifyingglass").font(.body)
                TextField("Dilediğiniz film veta diziyi arayın", text: $txt)
            }.padding().background(Color("Renk1"))
            
            
            
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Netflix Originals").font(.title)
                    
                    ZStack {
                        NavigationLink(
                            destination: Detail(show: $show),
                            isActive: $show,
                            label: {
                                Text("")
                            })
                        
                        Image("ust").resizable().onTapGesture {
                            self.show.toggle()
                        }
                        
                        VStack {
                            Spacer()
                            HStack {
                                VStack(alignment: .leading, spacing: 10, content: {
                                    Text("Marvel's the defenders").font(.body)
                                    Text("1.sezon").font(.caption)
                                })
                                
                                Spacer()
                                
                                Button(action: {}, label: {
                                    Image("oynat").renderingMode(.original)
                                })
                            } //HStack bitişi
                        }//VStack bitişi
                        .padding()
                        
                    }//ZStack bitişi
                    .frame(height:190)
                    
                    HStack {
                        Spacer()
                        Button(action: {}, label: {
                            Text("Tümünü göster").foregroundColor(Color("Renk2"))
                        })
                    }//HStack bitişi
                    
                    Text("İzlemeye devam edin")
                    
                    MiddleView()
                    BottomView()
                    
                    
                    
                }//VStack bitişi
                
            }//ScrollView bitişi
            .padding(.bottom,25)
            
            
        }.padding(.horizontal).edgesIgnoringSafeArea(.bottom).preferredColorScheme(.dark)
    }
}

struct Detail: View {
    @Binding var show: Bool
    var body: some View {
        VStack(spacing:15) {
            HStack(spacing:15) {
                Button(action: {self.show.toggle()}, label: {
                    Image("geri").renderingMode(.original)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image("paylas").renderingMode(.original)
                })
                
                Button(action: {}, label: {
                    Image("bilgi").renderingMode(.original)
                })
                
            }.padding()
            
            ZStack {
                Image("detay").resizable()
                
                VStack(alignment: .leading, spacing: 12, content: {
                    Spacer()
                    Text("TV DİZİSİ . AKSİYON").fontWeight(.bold)
                    Text("Marvel's the defenders").font(.title).fontWeight(.bold)
                    
                    HStack {
                        Text("%98 eşleşme").foregroundColor(.green).fontWeight(.bold)
                        Text("2019").fontWeight(.bold)
                        Image("hd")
                        Spacer()
                    }
                }).padding()
            }//ZStack bitişi
            .frame(height:UIScreen.main.bounds.height / 2)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack(alignment: .leading, spacing: 15, content: {
                    
                    HStack {
                        Button(action: {}, label: {
                            HStack(spacing:10) {
                                Image(systemName: "play.fill")
                                Text("Oynat")
                            }.padding()
                        }).foregroundColor(.white).background(Color("Renk2")).cornerRadius(10)
                        
                        Button(action: {}, label: {
                            HStack(spacing:10) {
                                Image(systemName: "plus")
                                Text("Listeye ekle")
                            }.padding()
                        }).foregroundColor(.white).background(Color("Renk2")).cornerRadius(10)
                        
                        Spacer()
                        
                    }//Hstack bitişi
                    
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 10, content: {
                            Text("Bölümler")
                            Text("1.sezonun tüm bölümleri burada").foregroundColor(.gray)
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            HStack(spacing:10) {
                                Image(systemName: "chevron.down")
                                Text("1.Sezon")
                            }.padding()
                        }).foregroundColor(.white).background(Color("Renk2")).cornerRadius(10)
                        
                    }.padding(.top,15)
                    
                    Divider().padding(.vertical,12)
                    
                    
                    ForEach(detayVerileri) { veri in
                        VStack(alignment: .leading, spacing: 15, content: {
                            HStack{
                                Image(veri.goruntu)
                                VStack(alignment:.leading, spacing:10) {
                                    Text(veri.adi)
                                    Text(veri.sure)
                                }
                                Spacer()
                                
                                Button(action: {}, label: {
                                    Image("indir").renderingMode(.original)
                                })
                                
                            }
                            
                            Text(veri.aciklama)
                            
                        })//VStack bitişi
                    }//Foreach bitişi
                    .padding(.bottom,15)
                    
                    
                    
                })
                
            })//ScrollView bitişi
            .padding(.top,15).padding(.horizontal,15)
            
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct BottomView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text("Türlere göre keşfet")
            
            HStack{
                Button(action: {}, label: {
                    Text("Aksiyon").padding().foregroundColor(.white).background(Color("Renk2")).cornerRadius(10)
                })
                
                Spacer(minLength: 4)
                
                Button(action: {}, label: {
                    Text("Macera").padding().foregroundColor(.white).background(Color("Renk2")).cornerRadius(10)
                })
                
                Spacer(minLength: 4)
                
                Button(action: {}, label: {
                    Text("Komedi").padding().foregroundColor(.white).background(Color("Renk2")).cornerRadius(10)
                })
                
                Spacer(minLength: 4)
                
                Button(action: {}, label: {
                    Text("Korku").padding().foregroundColor(.white).background(Color("Renk2")).cornerRadius(10)
                })
                
                
                
            }
            
            Text("Trend olanlar")
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:15) {
                    ForEach(altAfisler, id:\.self) { i in
                        Image(i).cornerRadius(10)
                    }
                }
            }
            
            
        }
    }
}


struct MiddleView: View {
    var body: some View {
        VStack(spacing:15) {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:15) {
                    ForEach(afisVerileri) { veri in
                        VStack(alignment:.leading, spacing:0) {
                            Image(veri.goruntu)
                            HStack {
                                Spacer()
                                Button(action: {}, label: {
                                    Image("oynat").renderingMode(.original).resizable().frame(width:25, height:25)
                                })
                            }.padding(.top,-12)
                            
                            VStack(alignment:.leading) {
                                Text(veri.adi)
                                Text(veri.bolum).foregroundColor(.gray)
                                
                                ZStack {
                                    Capsule().fill(Color.gray)
                                    HStack {
                                        Capsule().fill(Color("Renk2")).frame(width:veri.yuzde)
                                        Spacer()
                                    }
                                }//ZStack bitişi
                                .frame(height:5)
                                
                            }//VStack bitişi
                            .padding(.horizontal).padding(.bottom,10)
                            
                        }//VStack bitişi
                        .background(Color("Renk1")).padding(.bottom)
                    }
                }
            }
        }
    }
}


struct Afis: Identifiable {
    var id: Int
    var adi: String
    var bolum: String
    var goruntu: String
    var yuzde: CGFloat
}

var afisVerileri = [
    Afis(id: 0, adi: "Ghoul", bolum: "1.Bölüm S1", goruntu: "m1", yuzde: 45),
    Afis(id: 1, adi: "13 Reasons why", bolum: "2.Bölüm S1", goruntu: "m2", yuzde: 90)
]

var altAfisler = ["b1", "b2"]


struct DiziBolumDetay: Identifiable {
    var id: Int
    var adi: String
    var sure: String
    var goruntu: String
    var aciklama: String
}

var detayVerileri = [
    DiziBolumDetay(id: 0, adi: "The 'H' Word", sure: "51 dk", goruntu: "d1", aciklama: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation"),
    DiziBolumDetay(id: 1, adi: "The 'H' Word", sure: "44 dk", goruntu: "d2", aciklama: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation")
]




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
