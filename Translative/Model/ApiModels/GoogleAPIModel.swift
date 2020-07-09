//
//  GoogleAPIModel.swift
//  Translative
//
//  Created by xdrond on 27.06.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation

struct GoogleApiResponse: Decodable {
    let data: DataClass
}

extension GoogleApiResponse {
//    private enum GoogleApiResponseCodingKeys: CodingKey {
//        case data
//    }

//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: GoogleApiResponseCodingKeys.self)
//    }

    init(data: Data) throws {
        self = try JSONDecoder().decode(GoogleApiResponse.self, from: data)
    }
}

// MARK: - Translations
struct DataClass: Decodable {
    let translations: [Translation]
}

extension DataClass {
    init(data: Data) throws {
        self = try JSONDecoder().decode(DataClass.self, from: data)
    }
}

// MARK: - Translation
struct Translation: Decodable {
    let translatedText: String
    let detectedSourceLanguage: String?
}

extension Translation {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Translation.self, from: data)
    }
}

// MARK: - Helper functions for creating decoders

//func newJSONDecoder() -> JSONDecoder {
//    let decoder = JSONDecoder()
//    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
//        decoder.dateDecodingStrategy = .iso8601
//    }
//    return decoder
//}

