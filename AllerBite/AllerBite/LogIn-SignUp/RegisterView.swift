import SwiftUI

struct RegisterView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var confirmPassword: String = ""
  @State private var showAlert = false
  @State private var alertMessage = ""

  var body: some View {
    VStack {
      Text("Register here")
        .foregroundColor(  Color(red: 79/255, green: 143/255, blue: 0/255))
        .font(.system(size: 34))
        .bold()
      Text("Create an account making")
        .font(.title)
        .padding(.top)
      Text("safer food choices!")
        .font(.title)
      TextField("Email", text: $email)
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 20, trailing: 0))
      SecureField("Password", text: $password)
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 20, trailing: 0))
      SecureField("Confirm Password", text: $confirmPassword)
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 20, trailing: 0))

      Button(action: {
        // Handle registration logic here (e.g., validate passwords)
        if password != confirmPassword {
          showAlert = true
          alertMessage = "Passwords don't match!"
        } else {
          print("Registration successful (placeholder)")
        }
      }) {
        Text("Register")
          .foregroundColor(.white)
          .padding(EdgeInsets(top: 12, leading: 75, bottom: 12, trailing: 75))
          .background (Color(red: 79/255, green: 143/255, blue: 0/255))
          .cornerRadius(10)
      }
      .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
      .disabled(email.isEmpty || password.isEmpty || confirmPassword.isEmpty)

      Text("Already have an account?")
        .font(.system(size: 15))
        .foregroundColor(  Color(red: 79/255, green: 143/255, blue: 0/255))
        .padding(EdgeInsets(top: 40, leading: 0, bottom: 30, trailing: 0))

      HStack(spacing: 10) {
        Button(action: {
          print("Google Sign-In not yet implemented")
        }) {
          HStack {
            Image(systemName: "g.circle")
                  .foregroundColor(  Color(red: 79/255, green: 143/255, blue: 0/255))
          }
          .padding()
          .background(Color.gray.opacity(0.2))
          .cornerRadius(100)
        }
        .disabled(true) // Disable button as functionality isn't ready
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 50))
        Button(action: {
          print("Apple Sign-In not yet implemented")
        }) {
          HStack {
            Image(systemName: "apple.logo")
                  .foregroundColor(  Color(red: 79/255, green: 143/255, blue: 0/255))
          }
          .padding()
          .background(Color.gray.opacity(0.2))
          .cornerRadius(100)
        }
        .disabled(true) // Disable button as functionality isn't ready
      }
    }
    .padding()
  }
}

#Preview {
  RegisterView()
}

