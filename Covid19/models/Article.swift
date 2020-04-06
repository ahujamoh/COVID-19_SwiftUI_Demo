//
//  Article.swift
//  newsDemo
//
//  Created by Hung Thai Minh on 2/19/20.
//  Copyright © 2020 Hung Thai Minh. All rights reserved.
//

import Foundation

struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let title: String
    let descriptionText: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
    let source: Source
    
    enum CodingKeys: String, CodingKey {
        case author, title, url, urlToImage, publishedAt, content, source
        case descriptionText = "description"
    }
    
    func getURLImage() -> URL? {
        guard let urlString = urlToImage else { return nil }
        return URL(string: urlString)
    }
    
    func getURLLinkForWeb() -> URLRequest? {
        guard let urlString = url,
            let url = URL(string: urlString) else { return nil }
        return URLRequest(url: url)
    }
}
