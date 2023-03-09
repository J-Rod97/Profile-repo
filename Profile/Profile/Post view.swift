//
//  Post view.swift
//  Profile
//
//  Created by Jonathan Rodriguez on 3/9/23.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading) {

            // User Profile + Info + Post
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(.cyan)

                // User Information & Caption
                VStack(alignment: .leading, spacing: 4) {
                    //
                    HStack {
                        Text("Walter White")
                            .font(.subheadline).bold()

                        Text("@WalterWhite")
                            .foregroundColor(.gray)
                            .font(.caption)

                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    //Caption
                    Text("Breaking Bad is never coming back!")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            //Action buttions
            
            HStack {
                Button {
                } label : {
                    Image(systemName: "ellipsis.message")
                        .foregroundColor(.cyan)
                }
                Spacer()

                Button {
                } label : {
                    Image(systemName: "arrow.2.squarepath")
                        .foregroundColor(.cyan)
                }
                Spacer()

                Button {
                } label : {
                    Image(systemName: "heart")
                        .foregroundColor(.cyan)
                }
                Spacer()
                Button {
                } label : {
                    Image(systemName: "bookmark")
                        .foregroundColor(.cyan)
                }


            }
            .padding()

            Divider()
        }
        .padding()
    }

    struct FeedView_Previews: PreviewProvider {
        static var previews: some View {
            PostView()
        }
    }
}
