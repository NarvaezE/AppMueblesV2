//
//  TutorialTresView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 29/07/22.
//

import SwiftUI

struct TutorialTresView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .trailing){
                    Image("img3").resizable().aspectRatio(contentMode: .fit).padding(.horizontal,40)
                    
                }
                Text("Explore Modern Furniture").font(.system(size: 30)).padding(.bottom,10)
                Text("You can try furniture from the catalog in your home with AR. \n").font(.title3).fontWeight(.light)
                    .padding(.bottom,30)
                Spacer()
                
 
            }
        }
    }
}

struct TutorialTresView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialTresView()
            .previewDevice("iPhone 11")
    }
}
