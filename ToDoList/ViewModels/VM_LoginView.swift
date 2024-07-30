//
//  VM_LoginView.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import FirebaseAuth
import Foundation
class VM_LoginView: ObservableObject{
	@Published var email = ""
	@Published var password = ""
	@Published var errorMessage = ""
	
	init() {}
	func login(){
		guard validate() else {
			return
		}
		//Try to log in
		Auth.auth().signIn(withEmail: email, password: password)
	}
	
	private func validate() -> Bool {
		errorMessage = ""
		guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
			  !password.trimmingCharacters(in: .whitespaces).isEmpty else {
			errorMessage = "Please complete all fields."
			return false
		}
		guard email.contains("@") && email.contains(".") else {
		errorMessage = "Please enter a valid email address."
			return false
		}
		print("Logged In")
		return true
	}
}

