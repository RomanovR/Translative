//
//  Language+CoreDataProperties.swift
//  Translative
//
//  Created by xdrond on 08.09.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//
//

import Foundation
import CoreData


extension Language {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Language> {
        return NSFetchRequest<Language>(entityName: "Language")
    }

    @NSManaged public var code: NSDecimalNumber?
    @NSManaged public var name: String?
    @NSManaged public var nationalFlag: String?
    @NSManaged public var shortName: String?
    @NSManaged public var sourceLanguagesPairs: NSSet?
    @NSManaged public var destinationLanguagesPairs: NSSet?

}

// MARK: Generated accessors for sourceLanguagesPairs
extension Language {

    @objc(addSourceLanguagesPairsObject:)
    @NSManaged public func addToSourceLanguagesPairs(_ value: LanguagesPair)

    @objc(removeSourceLanguagesPairsObject:)
    @NSManaged public func removeFromSourceLanguagesPairs(_ value: LanguagesPair)

    @objc(addSourceLanguagesPairs:)
    @NSManaged public func addToSourceLanguagesPairs(_ values: NSSet)

    @objc(removeSourceLanguagesPairs:)
    @NSManaged public func removeFromSourceLanguagesPairs(_ values: NSSet)

}

// MARK: Generated accessors for destinationLanguagesPairs
extension Language {

    @objc(addDestinationLanguagesPairsObject:)
    @NSManaged public func addToDestinationLanguagesPairs(_ value: LanguagesPair)

    @objc(removeDestinationLanguagesPairsObject:)
    @NSManaged public func removeFromDestinationLanguagesPairs(_ value: LanguagesPair)

    @objc(addDestinationLanguagesPairs:)
    @NSManaged public func addToDestinationLanguagesPairs(_ values: NSSet)

    @objc(removeDestinationLanguagesPairs:)
    @NSManaged public func removeFromDestinationLanguagesPairs(_ values: NSSet)

}
