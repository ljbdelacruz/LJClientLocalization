//
//  CLUserDefaults.swift
//  LJClientLocalization
//
//  Created by Lainel John Dela Cruz on 21/08/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation

enum CLUserDefaultsKey{
    case version
    static func getKey(data:CLUserDefaultsKey)->String{
        switch data{
        case .version:
            return "clversion"
        }
    }
}
class CLUserDefaults{
    var ushelper=UserDefaultsHelpers()
    var version:String?="";
    init(){
        self.version = ushelper.readData(key: CLUserDefaultsKey.getKey(data: .version));
    }
    func setVersion(version:String){
        UserDefaults.standard.set(version, forKey: CLUserDefaultsKey.getKey(data: .version));
//        ushelper.setData(value: version, key: CLUserDefaultsKey.getKey(data: .version))
        self.version=version;
    }
    
    
}
