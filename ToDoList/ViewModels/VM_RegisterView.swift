//
//  VM_RegisterView.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation
class VM_RegisterView: ObservableObject {
	@Published var firstname = ""
	@Published var lastname = ""
	@Published var email = ""
	@Published var password = ""
	
	init() {}
	
	func register() {
		guard validate() else {
			return
		}
		
		Auth.auth().createUser(withEmail: email, password: password) {[weak self] result, error in
			guard let userId = result?.user.uid else {
				return
			}
			self?.insertUserRecord(id: userId)
		}
	}
	
	private func insertUserRecord (id: String) {
		let newUser = User(id: id,
						   firstname: firstname,
						   lastname: lastname,
						   email: email,
						   joined: Date().timeIntervalSince1970)
		
		// Firestore Database
		let db = Firestore.firestore()
		db.collection("users")
			.document(id)
			.setData(newUser.asDictionary())
	}
	
	private func validate() -> Bool {
		guard !firstname.trimmingCharacters(in: .whitespaces).isEmpty,
			  !lastname.trimmingCharacters(in: .whitespaces).isEmpty,
			  !email.trimmingCharacters(in: .whitespaces).isEmpty,
			  !password.trimmingCharacters(in: .whitespaces).isEmpty else {
			return false
		}
		guard email.contains("@") && email.contains(".") else {
			return false
		}
		guard password.count >= 6 else {
			return false
		}
		return true
	}
	
	
}

