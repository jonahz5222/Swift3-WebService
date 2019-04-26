//
//  MovieReview.swift
//  Movie Reviews
//
//  Created by DALE MUSSER on 3/4/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

struct Link {
    var type: String
    var urlString: String
    var linkText: String
}

struct Media {
    var type: String
    var srcUrlString: String
    var width: Int
    var height: Int
}

struct MovieReview {
    var displayTitle: String
    var mpaaRating: String
    var criticsPick: Int
    var byline: String
    var headline: String
    var shortSummary: String
    var publicationDate: Date
    var openingDate: Date
    var dateUpdated: Date
    var link: Link
    var media: Media
}
