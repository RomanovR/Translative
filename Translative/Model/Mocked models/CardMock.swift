//
//  Card.swift
//  Translative
//
//  Created by xdrond on 19.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import Foundation

struct CardMock {
    // MARK: - User request for translation.
    var title: String? {
        get {
            if let firstWord = self.userText?.components(separatedBy: " ").first {
                return firstWord
            }
            else {
                return nil
            }
        }
    }
    var userText: String?
    var translatedText: String?
}
