import SwiftUI
struct HomeView: View {
    var body: some View {
        ZStack {
            VStack {
                ScrollView {
                    Text("You May Like")
                        .font(.system(size: 25))
                        .foregroundColor(.gray)
                        .padding(.top, 18) // Add padding to the top
                        .offset(x:-100)
                    
                    Spacer()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            VStack {
                                Image("food")
                                    .resizable()
                                    .frame(width: 140, height: 150)
                                
                                Text("Pasta")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.gray)
                                    .offset(x:-35)
                                
                                Text("Corn Free")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-26)
                            }
                            .offset(x: 5, y: 0)
                            
                            VStack {
                                Image("food1")
                                    .resizable()
                                    .frame(width: 140, height: 150)
                                
                                Text("Cookies")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.gray)
                                    .offset(x:-26)
                                
                                Text("Egg Free")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-29)
                            }
                            .offset(x: 5, y: 0)
                            
                            VStack {
                                Image("food2")
                                    .resizable()
                                    .frame(width: 140, height: 150)
                                
                                
                                Text("Pancakes")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.gray)
                                    .offset(x:-26)
                                
                                Text("Egg Free")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-37)
                            }
                            .offset(x: 5, y: 0)
                        }
                        .padding(.horizontal, 10) // Add horizontal padding to the HStack
                    }
                    .offset(y: 10) // Offset for the horizontal scroll view
                    
                    Spacer()
                    
                    Text("Recent Scans...")
                        .font(.system(size: 25))
                        .foregroundColor(.gray)
                        .padding(.top, 18) // Add padding to the top
                        .offset(x:-90 , y:10)
                
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            VStack {
                                Image("food3")
                                    .resizable()
                                    .frame(width: 140, height: 150)
                                
                                Text("Lays")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.gray)
                                    .offset(x:-35)
                                
                                Text("Safe")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-40)
                                
                                Image(systemName: "checkmark.circle")
                                    .foregroundColor(.green)
                                    .font(.system(size: 18))
                                    .offset(x: 50, y: -35)
                            }
                            .offset(x: 5, y: 0)
                            
                            VStack {
                                Image("food4")
                                    .resizable()
                                    .frame(width: 140, height: 150)
                                
                                Text("Ramen")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.gray)
                                    .offset(x:-26)
                                
                                Text("Unsafe")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-32)
                                
                                Image(systemName: "xmark.circle")
                                    .foregroundColor(.red)
                                    .font(.system(size: 18))
                                    .offset(x: 50, y: -35)
                            }
                            .offset(x: 5, y: 0)
                            
                            VStack {
                                Image("food5")
                                    .resizable()
                                    .frame(width: 140, height: 150)
                                
                                
                                Text("Kurkure")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.gray)
                                    .offset(x:-27)
                                
                                Text("Unsafe")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                                    .offset(x:-37)
                                
                                Image(systemName: "xmark.circle")
                                    .foregroundColor(.red)
                                    .font(.system(size: 18))
                                    .offset(x: 50, y: -35)
                            }
                            .offset(x: 5, y: 0)
                        }
                        .padding(.horizontal, 10) // Add horizontal padding to the HStack
                    }
                    .offset(y: 10) // Offset for the horizontal scroll view
                    
                    Text("Trending Articles")
                        .font(.system(size: 25))
                        .foregroundColor(.gray)
                        .padding(.top, 18) // Add padding to the top
                        .offset(x:-80 , y:10)
                    
                    VStack {
                        Image("article")
                            .resizable()
                            .frame(width: 150, height: 110)
                            .offset(x:-100 , y:10)
                        
                        Text("12 April 2023")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                            .offset(x:30 , y:-90)
                        
                        Text("Food authority: Restaurants,\nobey food info rules ")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .offset(x:85 , y:-80)
                        
                        Text("By India Times")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                            .offset(x:40 , y:-70)
                        
                        Button(action: {
                            // Action for Browse button
                        }) {
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.green)
                                .font(.system(size: 14))
                                .offset(x: 112, y: -85)
                        }

                    }
                    .offset(x: 5, y: 0)
                    
                    VStack(spacing: 10) {
                        Image("")
                            .resizable()
                            .frame(width: 150, height: 110)
                            .offset(x:-100 , y:10)
                        
                        Text("")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                            .offset(x:30 , y:-90)
                        
                        Text(" ")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .offset(x:85 , y:-80)
                        
                        Text("")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                            .offset(x:40 , y:-70)
                        
                        Button(action: {
                            // Action for Browse button
                        }) {
                            
                            Image(systemName: "")
                                .foregroundColor(.green)
                                .font(.system(size: 14))
                                .offset(x: 112, y: -85)
                        }

                    }
                    .offset(x: 5, y: 0)
                }
            }
        }
    }
}




#Preview {
    HomeView()
}




