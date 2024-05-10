
import SwiftUI


struct SearchBar: View {
    @State private var searchText: String = ""
    
    var body: some View {
        ZStack {
            HStack {
                TextField("Search", text: $searchText)
                    .padding(8)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                
                Spacer()
                
                HStack(spacing: 8) {
                    Button(action: {
                        // Perform microphone action
                    }) {
                        Image(systemName: "mic.fill")
                            .foregroundColor(.blue)
                    }
                    .padding(.trailing, 8)
                    
                    Button(action: {
                        // Perform search action
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 16)
    }
}


struct BottomView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Divider()
                .offset(y: -27)
            HStack(spacing: 50) {
                VStack {
                    Button(action: {
                        // Action for Heart button
                    }) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.gray)
                            .font(.system(size: 30))
                            .offset(x: -30, y: -20)
                    }
                    Text("Summary")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                        .offset(x: -28, y: -10)
                }

                VStack {
                    Button(action: {
                        // Action for Scanner button
                    }) {
                        Image(systemName: "barcode.viewfinder")
                            .foregroundColor(.gray)
                            .font(.system(size: 30))
                            .offset(x: -10, y: -20)
                    }
                    Text("Scanner")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                        .offset(x: -8, y: -10)
                }

                VStack {
                        Image(systemName: "square.grid.2x2.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 30))
                            .offset(x: 22, y: -20)
    
                    Text("Browse")
                        .foregroundColor(.blue)
                        .font(.system(size: 14))
                        .offset(x: 23, y: -10)
                }
                
            }
            .padding(.bottom, -20)
            
            
        }
        .frame(maxHeight: 60)
        .background(
            ZStack {
                // Background color with opacity
                Color.clear // Use clear color to make it invisible
                
                // Blur effect
                VisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
                    .opacity(0.5) // Adjust opacity of the blur effect
                
                // Bottom bar content
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.white.opacity(0.0)]), startPoint: .top, endPoint: .bottom))
                    .frame(height: 120)
            }
                .frame(height: 150)
                .offset(y: -50)
                
        )
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct PhotoView : View{
    
    var body: some View{
      
            HStack {
                Button(action: {
                    // Action for profile icon
                }) {
                    Image("profile")
                        .foregroundColor(.blue)
                        .font(.system(size: 30))
                        .padding(.leading, 16)
                }
                Spacer()
            }
        
    }
}


struct BrowseView: View {
    @State private var showProfile = false
    var body: some View {
        NavigationView {
            VStack(spacing: -55) {
                // Top bar with glass morphism effect
                ZStack {
                    // Background color with opacity
                    Color.clear // Use clear color to make it invisible

                    // Blur effect
                    VisualEffectView(effect: UIBlurEffect(style: .systemMaterial))
                        .opacity(0.5) // Adjust opacity of the blur effect

                    // Bottom bar content
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.white.opacity(0.0)]), startPoint: .top, endPoint: .bottom))
                        .frame(height: 140)
                        .padding()
                }
                .frame(height: 0) // Set initial height to 0
                .offset(y: -30) // Offset to position properly

                  Divider().offset(y: 112) // Offset for divider

                Text("Hi John! 👋🏻")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.black)
                    .offset(x: -105, y: 127) // Offset for text



               Divider().offset(y: -263) // Offset for divider
                
               HomeView()
                   .offset(y:243)

                
                Button(action: {
                            showProfile = true  // Set to true to show the ProfileView
                        }) {
                            Image("profile")  // Ensure you have an image named "profile" in your assets
                                .resizable()
                                .frame(width: 50, height: 48)
                        }
                        .offset(x: 150, y: -665)  // Offset for the button
                        .sheet(isPresented: $showProfile) {  // Sheet presentation
                            ProfileView()  // The view to show in the sheet
                        }
            }
        }
    }
}


struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}

