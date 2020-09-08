//
//  LanguagesPair+CoreDataProperties.swift
//  Translative
//
//  Created by xdrond on 08.09.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//
//

import Foundation
import CoreData


extension LanguagesPair {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LanguagesPair> {
        return NSFetchRequest<LanguagesPair>(entityName: "LanguagesPair")
    }

    @NSManaged public var destinationLanguage: Language?
    @NSManaged public var sourceLanguage: Language?
    @NSManaged public var userCards: NSSet?

}

// MARK: Generated accessors for userCards
extension LanguagesPair {

    @objc(addUserCardsObject:)
    @NSManaged public func addToUserCards(_ value: UserCard)

    @objc(removeUserCardsObject:)
    @NSManaged public func removeFromUserCards(_ value: UserCard)

    @objc(addUserCards:)
    @NSManaged public func addToUserCards(_ values: NSSet)

    @objc(removeUserCards:)
    @NSManaged public func removeFromUserCards(_ values: NSSet)

}
