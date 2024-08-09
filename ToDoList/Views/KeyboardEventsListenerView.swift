//
//  KeyboardEventsListenerView.swift
//  ToDoList
//
//  Created by Anna Callies on 8/9/24.
//

import SwiftUI
struct KeyboardEventsListenerView: View {
	@FocusState private var isFocused: Bool

	var body: some View {
		Text("Let's listen to keyboard events!")
			.padding()
			.focusable()
			.focused($isFocused)
			.onKeyPress(.return) {
				print("Return key pressed!")
				return .handled
			}
			.onAppear {
				isFocused = true
			}
	}
}
