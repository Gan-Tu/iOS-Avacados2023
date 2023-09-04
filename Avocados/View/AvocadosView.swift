//
//  AvocadosView.swift
//  Avocados
//
//  Created by Gan Tu on 9/4/23.
//

import SwiftUI

struct AvocadosView: View {
    @State private var pulstateAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()

            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x:0 ,y: 8)
                .scaleEffect(self.pulstateAnimation ? 1 : 0.9)
                .opacity(self.pulstateAnimation ? 1 : 0.9)
            
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x:0 ,y: 4)
                
                
                Text("Creamy, green, and full of nutrients!\nAvocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            
            Spacer()
        }
        .background(
            Image("background").resizable().aspectRatio(contentMode: .fill))
        .edgesIgnoringSafeArea(.top)
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                self.pulstateAnimation.toggle()
            }
        })
    }
}

#Preview {
    AvocadosView()
}

