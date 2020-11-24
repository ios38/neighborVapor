//
//  File.swift
//  
//
//  Created by Maksim Romanov on 22.11.2020.
//

import Vapor

struct Ad: Content {
    var adId: Int
    var userId: Int
    var date: String
    var category: String
    var title: String
    var content: String
    var images: String
}

struct AdsRequest: Content {
    var token: String
}

struct PostAdRequest: Content {
    var adId: Int?
    var userId: Int
    var date: String
    var category: String
    var title: String
    var content: String
    var images: String?
}

struct PostAdResponse: Content {
    var result: Int
    var userMessage: String?
    var errorMessage: String?
}

struct RemoveAdRequest: Content {
    var adId: Int
}

struct RemoveAdResponse: Content {
    var result: Int
    var userMessage: String?
    var errorMessage: String?
}
