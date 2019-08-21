//
//  UserDefaultsHelper.swift
//  LJClientLocalization
//
//  Created by Lainel John Dela Cruz on 21/08/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation

class UserDefaultsHelpers{
    init(){
    }
    func setData(value:String, key:String){
        UserDefaults.standard.set(value, forKey: key);
        print(key)
        print(value);
        
    }
    func readData(key:String)->String{
        
        let data=UserDefaults.standard.string(forKey: key);
        print(data);
        return data ?? "";
    }
    func clearData(){
        
    }
    
}
