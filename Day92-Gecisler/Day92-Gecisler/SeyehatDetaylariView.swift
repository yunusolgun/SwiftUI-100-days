//
//  SeyehatDetaylariView.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct SeyehatDetaylariView: View {
    var body: some View {
        VStack(alignment:.leading, spacing:15) {
            Text("Varış").foregroundColor(.orange)
            Button(action: {}, label: {
                HStack {
                    Text("Seç")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            })
            
            
            Text("Gidiş tarihi").foregroundColor(.orange)
            Button(action: {}, label: {
                HStack {
                    Text("Bugün")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            })
            
            Text("Dönüş tarihi").foregroundColor(.orange)
            Button(action: {}, label: {
                HStack {
                    Text("Yarın")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            })
            
        }.padding(25)
        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color("Darkest")))
        .padding(40)
        .font(.body)
    }
}

struct SeyehatDetaylariView_Previews: PreviewProvider {
    static var previews: some View {
        SeyehatDetaylariView()
    }
}
