//
//  LoginView.swift
//  InstagramClone
//
//  Created by Miaomiao Shi on 23/08/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()

                // logo
                Image("instagram_logo_black")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 80)
                
                // text fields
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())

                    SecureField("Enter your password", text: $password)
                        .modifier(IGTextFieldModifier())
                }
                
                Button {
                    print("Show forgot password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)

                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)

                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)

                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)

                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack {
                    Image("facebook_logo")
                        .resizable()
                        .frame(width: 20, height: 20)
                        
                    Text("Continue with Kakao")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()

                Divider()

                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .padding(.vertical, 16)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
