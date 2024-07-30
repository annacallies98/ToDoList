//
//  LoginView.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import SwiftUI

struct LoginView: View {
	
	@StateObject var viewModel = VM_LoginView()
	
    var body: some View {
		NavigationView {
			VStack {
				// Header
				HeaderView(title: "To Do List",
						   subtitle: "Stay On Track",
						   angle: 15,
						   background: Color("MediumColor"))
				
				// Login Form
				Form {
					if  !viewModel.errorMessage.isEmpty {
						Text(viewModel.errorMessage)
							.foregroundColor(Color.red)
					}					
					TextField("Email Address", text: $viewModel.email)
						.textFieldStyle(DefaultTextFieldStyle())
						.autocorrectionDisabled()
						.autocapitalization(.none)
					SecureField("Password", text: $viewModel.password)
						.textFieldStyle(DefaultTextFieldStyle())
					TDLButton(
						title: "Log In",
						background: Color.accentColor) 
					{
						viewModel.login()
					}
						
					.padding(15)
				}
				.offset(y: -50)
				// Create Account
				VStack{
					Text("New around here?")
					NavigationLink("Create An Account", destination: RegisterView())
				}
				.padding(.bottom, 50)
				Spacer()
			}
		}
	}
}

#Preview {
    LoginView()
}
