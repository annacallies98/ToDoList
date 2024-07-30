//
//  TDLButton.swift
//  ToDoList
//
//  Created by Anna Callies on 7/24/24.
//

import SwiftUI

struct TDLButton: View {
	let title: String
	let background: Color
	let action: () -> Void
	
    var body: some View {
		Button {
			action()
		}label: {
			ZStack{
				RoundedRectangle(cornerRadius: 10)
					.foregroundColor(background)
				Text(title)
					.foregroundColor(Color.white)
					.bold()
			}
		}
    }
}

#Preview {
	TDLButton(title: "Value",
			  background: .pink){
		// Action
	}
}
