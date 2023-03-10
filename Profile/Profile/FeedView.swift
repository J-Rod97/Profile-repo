//
//  FeedView.swift
//  Profile
//
//  Created by Jonathan Rodriguez on 3/9/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {

        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { _ in
                    PostView()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

