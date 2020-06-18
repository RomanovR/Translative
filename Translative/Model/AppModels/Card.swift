//
//  Card.swift
//  Translative
//
//  Created by xdrond on 19.06.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation

struct Card {
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
