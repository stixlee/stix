//
//  Login.swift
//  Stix
//
//  Created by Michael Lee on 4/7/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var viewModel = AuthenticationViewModel()
        
    var body: some View {
        ZStack {
            Color.primaryBackground
            VStack {
                 HStack {
                    Spacer()
                    Text("stix")
                         .font(Font.custom("GoldenGrotesque-Medium", size: 72))
                    Spacer()
                }
                .padding(.top, 120)
                HStack(alignment: .center) {
                    Image(systemName: "envelope.fill")
                        .font(.system(size: 18.0))
                        .padding(.trailing, 12)
                        .foregroundColor(.primary)
                    TextField("Email", text: $viewModel.email)
                        .font(.system(size: 18.0))
                    Spacer()
                }
                .padding(.top, 60)
                .padding(.leading, 48)
                Rectangle()
                    .frame(height: 1)
                    .background(Color.primary)
                    .padding([.leading, .trailing], 48)
                 HStack(alignment: .center) {
                    Image(systemName: "lock.fill")
                        .font(.system(size: 18.0))
                        .padding(.trailing, 12)
                        .foregroundColor(.primary)
                     SecureField("Password", text: $viewModel.password)
                        .font(.system(size: 18.0))
                    Spacer()
                }
                .padding(.top, 18)
                .padding(.leading, 48)
                Rectangle()
                    .frame(height: 1)
                    .background(Color.primary)
                    .padding([.leading, .trailing], 48)
                HStack  {
                    Button(action: {
                        viewModel.login()
                    }) {
                        Text("SIGN IN")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .foregroundColor(.primary)
                    }
                    .background(Capsule()
                                    .stroke(Color.primary, lineWidth: 1))
                }
                .padding(.top, 96)
                .padding(.leading, 48)
                .padding(.trailing, 48)

                HStack  {
                    Button(action: {}) {
                        Text("SKIP")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .foregroundColor(.primary)
                    }
                    .background(Capsule()
                                    .stroke(Color.primary, lineWidth: 1))
                }
                .padding(.top, 0)
                .padding(.leading, 48)
                .padding(.trailing, 48)
                Spacer()
                HStack {
                    Spacer()
                    Text("Don't have an account?")
                        .padding(.trailing, 8)
                    Text("SIGN UP")
                        .foregroundColor(.blue)
                    Spacer()
                }
                .padding(.bottom, 64)
            }
            .padding(.bottom, 28)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
