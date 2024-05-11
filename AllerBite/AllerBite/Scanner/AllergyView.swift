import SwiftUI
struct AllergyView: View {
    private var listOfAllergies = allergyData
    @State private var searchText = ""
    @State private var navigateToContentView = false
    @State private var selectedAllergies: Set<String> = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(allergies, id: \.self) { allergy in
                    AllergyRow(allergy: allergy, isSelected: selectedAllergies.contains(allergy.name))
                        .padding()
                        .onTapGesture {
                            if selectedAllergies.contains(allergy.name) {
                                selectedAllergies.remove(allergy.name)
                            } else {
                                selectedAllergies.insert(allergy.name)
                            }
                            saveSelectedAllergies()
                        }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Choose Your Allergy")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        // Handle Cancel action
                    }
                    .foregroundColor(.green)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(
                        destination: MainView().navigationBarBackButtonHidden(true),
                        isActive: $navigateToContentView
                    ) {
                        Button("Done") {
                            // Handle Done action
                            navigateToContentView = true
                        }
                        .foregroundColor(.green)
                    }
                }
            }
        }
        .onAppear(perform: loadSavedAllergies)
    }
    
    private func loadSavedAllergies() {
        if let savedAllergies = UserDefaults.standard.array(forKey: "savedAllergies") as? [String] {
            print("Loaded saved allergies:", savedAllergies)
            self.selectedAllergies = Set(savedAllergies)
        }
    }
    
    private func saveSelectedAllergies() {
        UserDefaults.standard.set(Array(selectedAllergies), forKey: "savedAllergies")
    }
    
    // Filter allergies
    var allergies: [Allergy] {
        // Make allergies lowercased
        let lcAllergies = listOfAllergies.map { Allergy(symbol: $0.symbol.lowercased(), name: $0.name.lowercased()) }
        
        return searchText.isEmpty ? lcAllergies : lcAllergies.filter { $0.name.contains(searchText.lowercased()) }
    }
}



struct Allergy: Identifiable, Hashable {
    let id = UUID() // Use UUID for unique identifiers
    var symbol: String
    var name: String
}

struct AllergyRow: View {
    let allergy: Allergy
    let isSelected: Bool
    
    var body: some View {
        HStack {
            Text(allergy.symbol)
                .font(.title)
            Text(allergy.name)
            Spacer()
            if isSelected {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
            }
        }
        .padding(.vertical, -5) // Adjust this value to change the height of each row
    }
}

// Sample allergy data (replace with your actual data)
let allergyData = [
    Allergy(symbol: "🥜", name: "Peanut"),
    Allergy(symbol: "🥚", name: "Egg"),
    Allergy(symbol: "🥛", name: "Milk"),
    Allergy(symbol: "🫘", name: "Kidney Beans"),
    Allergy(symbol: "🐟", name: "Fish and Shelfish"),
    Allergy(symbol: "🌴", name: "Palm Oil"),
    Allergy(symbol: "🥑", name: "Avocado"),
    Allergy(symbol: "🌾", name: "Wheat"),
    Allergy(symbol: "🦀", name: "Crustaceans")
]

struct AllergyView_Previews: PreviewProvider {
    static var previews: some View {
        AllergyView()
    }
}

