//
//  ContentView.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import SwiftUI

struct MainView: View {
	@StateObject var viewModel = VM_MainView()
	@State private var wiggle = false
	@State private var bounce = false

	
    var body: some View {
		if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
			TabView {
				ToDoListView()
					.tabItem {
						Button{
							bounce.toggle()
						}label: {
							Text("Home")
							Image(systemName: "house.fill")
								.symbolRenderingMode(.hierarchical)
								.symbolEffect(.bounce.up.wholeSymbol, value: bounce)
						}
						//Label("Home", systemImage: "house")
					}
				ProfileView()
					.tabItem {
						Button{
							bounce.toggle()
						}label: {
							Text("Profile")
							Image(systemName: "person.crop.circle.fill")
								.symbolRenderingMode(.hierarchical)
								.symbolEffect(.bounce.up.wholeSymbol, value: bounce)
						}
//						Label("Profile", systemImage: "person.circle")
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
