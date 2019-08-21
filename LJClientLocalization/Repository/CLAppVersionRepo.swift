//
//  CLAppVersionRepo.swift
//  LJClientLocalization
//
//  Created by Lainel John Dela Cruz on 21/08/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//
import Foundation
import Moya
import RxSwift
import Moya_ObjectMapper

class CLAppVersionRepo{
    let provider = CLLJProvider()
    init(){
    }
    func checkVersion(id:String)->Observable<CLAppVersion>{
        return provider.rx.request(.checkAppLocalVersion(id: id))
            .asObservable()
            .mapErrors(provider: provider)
            .mapObject(CLAppVersion.self)
    }
}
