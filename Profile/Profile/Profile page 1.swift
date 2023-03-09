//
//  Profile page 1.swift
//  Profile
//
//  Created by Jonathan Rodriguez on 3/9/23.
//


import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter : PostFilterViewModel = .posts
    @Namespace var animation
    var body: some View {
        VStack(alignment: .leading) {
        headerView

         actionButton

            userInfoDetails

            postFilterBar

            postsView

            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var headerView: some View {
        ZStack (alignment: .bottomLeading) {
            Color(.systemCyan)
                .ignoresSafeArea()

            VStack {
                Button {

                } label: {
                    
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16, alignment: .topLeading)
                        .foregroundColor(.white)
                }
                .padding()
                Image("Image 2")
                    .frame(width: 82, height: 82, alignment: .topLeading)
                    .padding(.leading)
            }
        }
        .frame(height: 50)
    }
    var actionButtons : some View {
            ZStack (alignment: .bottomLeading) {
                Color(.systemCyan)
                    .ignoresSafeArea()

                VStack {
                    Button {

                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20, height: 16)
                            .foregroundColor(.white)
                            .offset(x: -6, y: 12)
                    }

                    Circle()
                        .frame(width: 82, height: 82)
                    .offset(x: 16, y: 24)
                }
            }
            .frame(height: 96)
        }
    var actionButton : some View {
//        padding() ////////// was working here for button spacing layout
        HStack(spacing: 12) {

            Spacer()

            Image(systemName: "bell.badge")
                .foregroundColor(.cyan)
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button {

            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.cyan)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }

        }
        .padding(.trailing)
    }
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Walter White")
                    .font(.title2).bold()

                Image(systemName: "checkmark.seal.fill")
                    .offset(x:-5)
                    .foregroundColor(Color(.red))
            }
            Text("@walterwhite")
                .font(.subheadline)
                .foregroundColor(.gray)

            Text("The protagonist in the hit series, Breaking Bad.")
                .font(.subheadline)
                .padding(.vertical)

            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")

                    Text("Los Angeles, CA.")
                }
                HStack {
                    Image(systemName: "link")

                    Text("www.breakingbad.com")
                    }
             }
            .foregroundColor(.gray)
            .font(.caption)

            HStack(spacing: 24) {
                HStack(spacing: 4) {
                    Text("24")
                        .font(.subheadline)
                        .bold()

                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                HStack(spacing: 4) {
                    Text("69M")
                        .font(.subheadline)
                        .bold()

                    Text("Followers")
                        .font(.caption)
                    .foregroundColor(.gray)
                }
             }
            .padding(.vertical)
        }
        .padding(.horizontal)


    }

    var postFilterBar: some View {
        HStack {
            ForEach(PostFilterViewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == item ? .semibold: .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)

                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemCyan))
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height:3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }

        }
        .overlay(Divider().offset(x: 0, y: 16))
    }

    var postsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    FeedView()
                        .padding(-10)
                }
            }
        }
    }

}
