//
//  Ornek7_Asymmetric_Transitions.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI
import MapKit

struct Ornek7_Asymmetric_Transitions: View {
    @State private var showHelp = false
    
    var body: some View {
        ZStack {
            Color("Dark").edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("Transitions").foregroundColor(.white).font(.largeTitle)
                Text("Asimetrik Geçişlere Giriş").foregroundColor(.gray).font(.title)
                
                Text("Bir viewin eklenmesi ve silinmesi için farklı geçiş efektleri düzenleyebilirsiniz").padding().frame(maxWidth:.infinity).background(Color.yellow)
                
                ZStack(alignment:.topTrailing) {
                    MapView()
                    Button(action: {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                            self.showHelp = true
                        }
                            
                    }, label: {
                        Image(systemName: "questionmark.circle.fill")
                    }).padding()
                }.edgesIgnoringSafeArea(.vertical)
                
            }
            
            if showHelp {
                VStack(spacing:20) {
                    Text("Yardım").foregroundColor(.white)
                    Image("cartman")
                    
                    Button("Kapat") {
                        withAnimation(.easeIn) { 
                            self.showHelp = false
                        }
                        
                    }.padding(.top,30)
                    
                }.font(.title)
                .padding(35)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.orange))
                .padding(.top,100)
                .shadow(radius :15)
                .transition(AnyTransition.asymmetric(insertion: .slide, removal: .move(edge: .bottom)))
                .zIndex(1)
            }
            
        }
        
    }
}

struct MapView: UIViewRepresentable {
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 40.76, longitude: -111.89)
        let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
}

struct Ornek7_Asymmetric_Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Ornek7_Asymmetric_Transitions()
    }
}
