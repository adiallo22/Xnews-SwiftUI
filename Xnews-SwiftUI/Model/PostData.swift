//
//  PostData.swift
//  Xnews-SwiftUI
//
//  Created by Abdul Diallo on 1/8/20.
//  Copyright © 2020 Abdul Diallo. All rights reserved.
//

import Foundation

struct Result : Decodable {
    let hits : [Post]
}

struct Post : Decodable, Identifiable {
    var id : String {
        return objectID
    }
    let objectID : String
    let title : String
    let url : String?
    let points : Int
}
