//
//  Profile data.swift
//  Profile
//
//  Created by Jonathan Rodriguez on 3/9/23.
//

import SwiftUI

enum PostFilterViewModel: Int, CaseIterable {
    case posts
    case replies
    case interests
    
    var title: String {
        switch self {
        case .posts: return "Posts"
        case .replies: return "Replies"
        case .interests: return "Interests"
        }
    }
    
}
