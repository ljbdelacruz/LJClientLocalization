//
//  CLAppVersion.swift
//  LJClientLocalization
//
//  Created by Lainel John Dela Cruz on 21/08/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
import ObjectMapper

public class CLAppVersion: Mappable {
    public var id: Int?
    public var version: String?
    public var appid: String?
    
    public init(){}
    public required init?(map: Map) {}
    public func mapping(map: Map) {
        id <- map["id"]
        version <- map["version"]
        appid <- map["appid"]
    }
}
