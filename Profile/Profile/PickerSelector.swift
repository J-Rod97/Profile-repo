//
//  PickerSelector.swift
//  Profile
//
//  Created by Jonathan Rodriguez on 3/9/23.
//

import SwiftUI

struct PickerView: View {
    @State private var choices = ["green", "blue", "red"]
    @State private var selectedChoice = "green"
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(choices, id: \.self) { choice in
                    Button {
                        selectedChoice = choice
                    } label: {
                        Text(choice)
                            .foregroundColor(selectedChoice == choice ? .green : .orange)
                    }
                    .buttonStyle(.bordered)
                }
            }
        }
    }
}
                    
struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
