//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import FirebaseCore
import SwiftUI

@main

struct ToDoListApp: App {
	init(){
		FirebaseApp.configure()
	}
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
