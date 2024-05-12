//import SwiftUI
//
//struct DisplayView: View {
//    @State private var isAnimating = false
//    
//    var body: some View {
//        Color(red: 165/255, green: 205/255, blue: 58/255)
//            .edgesIgnoringSafeArea(.all)
//            .overlay(
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .rotationEffect(.degrees(isAnimating ? 360 : 0))
//                    .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
//                    .onAppear {
//                        isAnimating = true
//                    }
//            )
//    }
//}
//
//struct DisplayView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisplayView()
//    }
//}
//

//import SwiftUI
//
//struct DisplayView: View {
//    @State private var isAnimating = false
//    
//    var body: some View {
//        ZStack {
//            Color(red: 165/255, green: 205/255, blue: 58/255)
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 200, height: 200)
//                    .rotationEffect(.degrees(isAnimating ? 360 : 0))
//                    .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
//                    .onAppear {
//                        isAnimating = true
//                    }
//                    .opacity(isAnimating ? 1 : 0)
//                    .scaleEffect(isAnimating ? 1 : 0.5)
//                
//                Text("Welcome!")
//                    .font(.title)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.black.opacity(0.7))
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .padding()
//                    .opacity(isAnimating ? 1 : 0)
//                    .animation(Animation.easeInOut(duration: 1).delay(1))
//            }
//        }
//    }
//}
//
//struct DisplayView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisplayView()
//    }
//}

//
//import SwiftUI
//
//struct DisplayView: View {
//    @State private var logoScale: CGFloat = 1.0
//    @State private var logoRotation: Double = 0.0
//    @State private var logoOpacity: Double = 1.0
//    @State private var logoOffset: CGSize = .zero
//    @State private var isAnimating = false
//    
//    var body: some View {
//        ZStack {
//            Color(red: 165/255, green: 205/255, blue: 58/255)
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 200, height: 200)
//                    .scaleEffect(logoScale)
//                    .rotationEffect(.degrees(logoRotation))
//                    .opacity(logoOpacity)
//                    .offset(logoOffset)
//                    .animation(Animation.easeInOut(duration: 1).delay(0.5))
//                    .onAppear {
//                        animateLogo()
//                    }
//                
//                Text("Welcome!")
//                    .font(.title)
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.black.opacity(0.7))
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .padding()
//                    .opacity(isAnimating ? 1 : 0)
//                    .animation(Animation.easeInOut(duration: 1).delay(1))
//            }
//        }
//    }
//    
//    func animateLogo() {
//        isAnimating = true
//        logoScale = 1.2
//        logoRotation = 360
//        logoOpacity = 0.5
//        logoOffset = CGSize(width: 0, height: -50)
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            logoScale = 1.0
//            logoRotation = 0
//            logoOpacity = 1.0
//            logoOffset = .zero
//            isAnimating = false
//        }
//    }
//}
//
//struct DisplayView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisplayView()
//    }
//}

//
//import SwiftUI
//
//struct DisplayView: View {
//    @State private var logoScale: CGFloat = 1.0
//    @State private var logoRotation: Double = 0.0
//    @State private var logoOpacity: Double = 1.0
//    @State private var logoOffset: CGSize = .zero
//    @State private var isAnimating = false
//    @State private var textColor = Color.white
//    
//    var body: some View {
//        ZStack {
//            Color(red: 165/255, green: 205/255, blue: 58/255)
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 200, height: 200)
//                    .scaleEffect(logoScale)
//                    .rotationEffect(.degrees(logoRotation))
//                    .opacity(logoOpacity)
//                    .offset(logoOffset)
//                    .animation(Animation.easeInOut(duration: 1).delay(0.5))
//                    .onAppear {
//                        animateLogo()
//                    }
//                
//                Text("Welcome!")
//                    .font(.title)
//                    .foregroundColor(textColor)
//                    .padding()
//                    .background(Color.black.opacity(0.7))
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .padding()
//                    .opacity(isAnimating ? 1 : 0)
//                    .animation(Animation.easeInOut(duration: 1).delay(1))
//            }
//        }
//        .onTapGesture {
//            textColor = .random
//        }
//    }
//    
//    func animateLogo() {
//        isAnimating = true
//        logoScale = 1.2
//        logoRotation = 360
//        logoOpacity = 0.5
//        logoOffset = CGSize(width: 0, height: -50)
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            logoScale = 1.0
//            logoRotation = 0
//            logoOpacity = 1.0
//            logoOffset = .zero
//            isAnimating = false
//        }
//    }
//}
//
//struct DisplayView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisplayView()
//    }
//}
//
//extension Color {
//    static var random: Color {
//        return Color(
//            red: .random(in: 0...1),
//            green: .random(in: 0...1),
//            blue: .random(in: 0...1)
//        )
//    }
//}
//
//import SwiftUI
//
//struct DisplayView: View {
//    @State private var logoScale: CGFloat = 1.0
//    @State private var logoRotation: Double = 0.0
//    @State private var logoOpacity: Double = 1.0
//    @State private var logoOffset: CGSize = .zero
//    @State private var isAnimating = false
//    @State private var textColor = Color.white
//    @State private var isShowingText = false
//    
//    var body: some View {
//        ZStack {
//            Color(red: 165/255, green: 205/255, blue: 58/255)
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 200, height: 200)
//                    .scaleEffect(logoScale)
//                    .rotationEffect(.degrees(logoRotation))
//                    .opacity(logoOpacity)
//                    .offset(logoOffset)
//                    .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
//                    .onAppear {
//                        animateLogo()
//                    }
//                
//                Text("Welcome!")
//                    .font(.title)
//                    .foregroundColor(textColor)
//                    .padding()
//                    .background(Color.black.opacity(0.7))
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .padding()
//                    .opacity(isShowingText ? 1 : 0)
//                    .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
//                    .onTapGesture {
//                        textColor = .random
//                    }
//            }
//        }
//        .onTapGesture {
//            isShowingText.toggle()
//        }
//    }
//    
//    func animateLogo() {
//        withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
//            logoScale = 1.2
//            logoRotation = 360
//            logoOpacity = 0.5
//            logoOffset = CGSize(width: 0, height: -50)
//        }
//    }
//}
//
//struct DisplayView_Previews: PreviewProvider {
//    static var previews: some View {
//        DisplayView()
//    }
//}
//
//extension Color {
//    static var random: Color {
//        return Color(
//            red: .random(in: 0...1),
//            green: .random(in: 0...1),
//            blue: .random(in: 0...1)
//        )
//    }
//}

import SwiftUI

struct DisplayView: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            Color(red: 165/255, green: 205/255, blue: 58/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: isAnimating ? 300 : 0, height: isAnimating ? 300 : 0) // Initial size is 0
                    .rotationEffect(Angle(degrees: isAnimating ? 360 : 0)) // Rotate if animating
                    .scaleEffect(isAnimating ? 2 : 1) // Scale up if animating
                    .opacity(isAnimating ? 1 : 0) // Make visible if animating
                    .onAppear {
                        withAnimation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                            self.isAnimating = true // Start animation on appear
                        }
                    }
                
                Spacer()
            }
        }
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView()
    }
}
