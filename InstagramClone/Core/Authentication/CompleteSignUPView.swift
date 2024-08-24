//
//  CompleteSignUPView.swift
//  InstagramClone
//
//  Created by Miaomiao Shi on 24/08/2024.
//

import SwiftUI

struct CompleteSignUPView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 12) {
            Text("Welcome to Kakao, Miao")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)

            Text("Click below to complete registration and start using kakao.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)

            Button {
                print("Complete sign up")
            } label: {
                Text("Complete Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CompleteSignUPView()
}
