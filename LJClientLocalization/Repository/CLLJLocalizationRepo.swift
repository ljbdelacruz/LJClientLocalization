//
//  CLLJLocalizationRepo.swift
//  LJClientLocalization
//
//  Created by Lainel John Dela Cruz on 21/08/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
import Moya
import RxSwift
import Moya_ObjectMapper

class CLLJLocalizationRepo{
    let provider = CLLJProvider()
    init(){
    }
    func getLocalizationByID(id:String)->Observable<[CLLJLocalization]>{
        return provider.rx.request(.getLocalization(id: id))
            .asObservable()
            .mapErrors(provider: provider)
            .mapArray(CLLJLocalization.self)
    }
}



