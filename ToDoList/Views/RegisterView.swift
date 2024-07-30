//
//  RegisterView.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import SwiftUI

struct RegisterView: View {


    var body: some View {

		VStack{
			// Header
			HeaderView(title: "Sign Up",
					   subtitle: "Start Organizing Today",
					   angle: -15,
					   background: Color("DarkColor"))
			// Register Form
			Form {
				TextField("First Name", text: $firstname)
					.textFieldStyle((DefaultTextFieldStyle()))
					.autocorrectionDisabled()
				TextField("Last Name", text: $lastname)
					.textFieldStyle((DefaultTextFieldStyle()))
					.autocapitalization(.none)
					.autocorrectionDisabled()
				TextField("Email Address", text: $email)
					.textFieldStyle((DefaultTextFieldStyle()))
					.autocapitalization(.none)
					.autocorrectionDisabled()
				SecureField("Password", text: $password)
					.textFieldStyle((DefaultTextFieldStyle()))
				TDLButton(
					title: "Sign Up",
					background: Color.accentColor)
				{
					
				}
				.padding(15)
			}
			.offset(y: -50)
		}
		Spacer()
    }
}

#Preview {
    RegisterView()
}
