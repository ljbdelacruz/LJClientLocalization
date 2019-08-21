//
//  CLLJLocalization.swift
//  LJClientLocalization
//
//  Created by Lainel John Dela Cruz on 21/08/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
import ObjectMapper

public class CLLJLocalization: Mappable {
    public var id: Int?
    public var key: String?
    public var value: String?
    public var langID: Int?
    public init(){}
    public required init?(map: Map) {}
    public func mapping(map: Map) {
        id <- map["id"]
        key <- map["key"]
        value <- map["value"]
        langID <- map["langID"]
    }
}
