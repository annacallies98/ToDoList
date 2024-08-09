//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import SwiftUI

struct ToDoListView: View {
	@StateObject var viewModel = VM_ToDoListView()
	
    var body: some View {
		NavigationView {
			VStack {
				
			}
			.navigationTitle("To Do List")
			.toolbar {
				Button {
					// Action
				} label: {
					Image(systemName: "plus")
				}
			
			}
		}
		
    }
}

#Preview {
    ToDoListView()
}
