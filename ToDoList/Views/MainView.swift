//
//  ContentView.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import SwiftUI

struct MainView: View {
	@StateObject var viewModel = VM_MainView()
	
    var body: some View {
		if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
			TabView {
				ToDoListView()
					.tabItem {
						Label("Home", systemImage: "house")
					}
				ProfileView()
					.tabItem {
						Label("Profile", systemImage: "person.circle")
					}
			}
		} else {
			LoginView()
		}
	}
}


#Preview {
    MainView()
}
