//
//  SplashView.swift
//  AppMueblesVenta
//
//  Created by Edgar Narvaez on 03/08/22.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            SwipeView()
        }
        else {
            
                ZStack{
                    ZStack{
                        Image("splash_img").resizable().ignoresSafeArea(.all)
                        
                        
                    }.opacity(opacity).onAppear(){
                        withAnimation(.easeIn(duration: 1.2)){
                            
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear(){
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.isActive = true
                    }
                }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
