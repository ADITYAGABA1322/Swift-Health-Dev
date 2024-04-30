//
//  ProfileView.swift
//  BarCodeScanner
//
//  Created by Aditya Gaba on 29/04/24.
//


//import SwiftUI
//
//struct ProfileView: View {
//    var body: some View {
//        VStack {
//            // Header with Image Icon
//            HStack {
//              //  Spacer()
//                Image(systemName: "person.circle.fill") // Use your image icon here
//                    .font(.largeTitle)
//              //  Spacer()
//            }
//           // .padding()
//
//            // List View with Health Details
//            List {
//                Section(header: Text("Health Details").foregroundColor(.black)) {
//                    // Health Details List Items
//                    Text("Blood Pressure: 120/80")
//                    Text("Heart Rate: 75 bpm")
//                    // Add more health details as needed
//                }
//
//                // Navigation Link to Health View
//                NavigationLink(destination: HealthView()) {
//                    Text("View Health Details")
//                }
//
//                // Medical ID Section
//                Section(header: Text("Medical ID").foregroundColor(.black)) {
//                    // Medical ID List Items
//                    Text("John Doe")
//                    Text("DOB: Jan 1, 1980")
//                    // Add more medical ID details as needed
//                }
//            }
//            .listStyle(InsetGroupedListStyle())
//            .padding()
//
//            // Done Button
//            //     Spacer()
//            Button(action: {
//                // Action for Done button
//            }) {
//                Text("Done")
//                    .foregroundColor(.white)
//                    .padding()
//                    .background(Color.green)
//                    .cornerRadius(8)
//            }
//            .padding()
//        }
//      //  .navigationBarTitle("Profile")
//    }
//}
//
//struct HealthView: View {
//    var body: some View {
//        Text("Health Details View")
//            .navigationBarTitle("Health Details")
//    }
//}
//
//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            ProfileView()
//        }
//    }
//}

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            // Icon at the top of the list
            

                   
            HStack {
                Spacer()
                Image("profile")  // Ensure you have an image named "profile" in your assets
                   // .resizable()
                    //.frame(width: 50, height: 48)
                Spacer()
                
//                Text("John Smith")
//                    .font(.system(size: 28, weight: .bold))
//                    .foregroundColor(.black)
//                    .offset(x: -135, y: 17)
                
                
            }
            .listRowBackground(Color.clear) // Ensures the background of this specific row is clear
            
//            HStack {
//                Spacer()
//                Button(action: {
//                    // Action for Done button
//                }) {
//                    Text("Done")
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.green)
//                        .cornerRadius(8)
//                }
//                Spacer()
//                
//                
//            }
//            .listRowBackground(Color.clear) // Ensures the background of this specific row is clear
//            
//            
            

            // Health Details Section
            Section() {
                NavigationLink(destination: HealthView()) {
                    Text("Health Details")
                }
                
                NavigationLink(destination: HealthView()) {
                    Text("Medical ID")
                }
                // Add more health details as needed
            }
            
            Section(header:
                                Text("Features")
                                .foregroundColor(.black)
                                .font(.system(size: 20).bold())
                                .textCase(.none)  // Make first letter capital, rest small
                .offset(x:-19)
                    ) {
                        NavigationLink(destination: HealthView()) {
                            Text("Subscriptions")
                        }
                        NavigationLink(destination: HealthView()) {
                            Text("Notifications")
                        }
                    }

          
            // Medical ID Section
            Section(header: Text("Privacy")
                .foregroundColor(.black)
                .font(.system(size: 20).bold())
                .textCase(.none)
                .offset(x:-19)) {
                NavigationLink(destination: HealthView()) {
                    Text("Apps and Services")
                }
                NavigationLink(destination: HealthView()) {
                    Text("Research Studies")
                }
                NavigationLink(destination: HealthView()) {
                    Text("Devices")
                }
            }
         
        }
        .listStyle(InsetGroupedListStyle())
      //  .padding()
//        Button(action: {
//            // Action for Done button
//        }) {
//            Text("Done")
//                .foregroundColor(.white)
//                .padding()
//                .background(Color.green)
//                .cornerRadius(8)
//        }
      //  .padding()
        
      
      // .navigationBarTitle("Profile")
    }
    
}

struct HealthView: View {
    var body: some View {
        Text("Health Details View")
            .navigationBarTitle("Health Details")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}

