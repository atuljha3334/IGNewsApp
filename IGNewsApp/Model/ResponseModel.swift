//
//  ResponseModel.swift
//  IGNewsApp
//
//  Created by Atul Jha on 10/12/21.
//

struct NewsResponseModel: Codable {
    let breakingNews: String?
    let topNews: [TopNews]?
    let dailyBriefings: DailyBriefings?
    let technicalAnalysis: [TopNews]?
    let specialReport: [TopNews]?
}

struct TopNews: Codable {
    let title: String?
    let url: String?
    let description: String?
    let headlineImageUrl: String?
    let newsKeywords: String?
    let authors: [Authors]?
    let instruments: [String]?
    let tags: [String]?
    let categories: [String]?
    let displayTimestamp: Int64?
    let lastUpdatedTimestamp: Int64?
}

struct DailyBriefings: Codable {
    let eu: [TopNews]?
    let asia: [TopNews]?
    let us: [TopNews]?
}

struct Authors: Codable {
    let name: String?
    let title: String?
    let bio: String?
    let descriptionLong: String?
    let descriptionShort: String?
    let photo: String?
}
