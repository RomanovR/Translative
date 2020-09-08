//
//  UserCard+CoreDataProperties.swift
//  Translative
//
//  Created by xdrond on 08.09.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//
//

import Foundation
import CoreData


extension UserCard {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserCard> {
        return NSFetchRequest<UserCard>(entityName: "UserCard")
    }

    @NSManaged public var cashedTranslation: String?
    @NSManaged public var userText: String?
    @NSManaged public var languagePair: LanguagesPair?

}
