//
//  VM_MainView.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import FirebaseAuth
import Foundation
class VM_MainView: ObservableObject {
	@Published var currentUserId: String = ""

	
	private var handler: AuthStateDidChangeListenerHandle?
	
	init() {
		self.handler = Auth.auth().addStateDidChangeListener {[weak self] _, user in
			DispatchQueue.main.async {
				self?.currentUserId = user?.uid ?? ""
			}
		}
	}
	
	public var isSignedIn: Bool {
		return Auth.auth().currentUser != nil
	}
}
