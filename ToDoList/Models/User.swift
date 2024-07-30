//
//  User.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import Foundation

struct User: Codable {
	let id: String
	let firstname: String
	let lastname: String
	let email: String
	let joined: TimeInterval

}
