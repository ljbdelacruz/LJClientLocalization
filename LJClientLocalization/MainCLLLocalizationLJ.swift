//
//  MainCLLLocalizationLJ.swift
//  LJClientLocalization
//
//  Created by Lainel John Dela Cruz on 21/08/2019.
//  Copyright © 2019 Lainel John Dela Cruz. All rights reserved.
//

import Foundation
public protocol IMainCLLLocalizationLJ{
    func finishSettingUp();
    func error(err:Error)
}

public class MainCLLLocalizationLJ{
    var userDef:CLUserDefaults=CLUserDefaults();
    var util:CLUtility?
    var realm:CLLRealmLJ?;
    var appVersion:CLAppVersion?;
    var handler:IMainCLLLocalizationLJ?;
    public init(handler:IMainCLLLocalizationLJ) {
        self.handler=handler;
        self.util=CLUtility(handler:self);
        self.realm=CLLRealmLJ();
    }
    public func checkVersion(id:String){
        self.util?.checkVersion(id: "1ee")
    }
    public func getLocalization(local:String, langID:Int)->String{
        return self.realm!.getValueByKey(key: local, langID: langID)
    }
}
extension MainCLLLocalizationLJ:ICLUtility{
    func getResultCheckVersion(data: CLAppVersion) {
        if (userDef.version == nil ? "" : userDef.version) != data.version{
            //update
            self.appVersion=data;
            self.util?.getLocalization(id: data.appid!)
        }else{
            self.handler?.finishSettingUp();
        }
    }
    func getResultLocalization(datas: [CLLJLocalization]) {
        print(appVersion!.version!);
        self.realm?.removeAll();
        print("Removing all")
        print("Adding Datas");
        self.realm?.addByList(datas: datas);
        userDef.setVersion(version: appVersion!.version!);
        self.handler?.finishSettingUp();
    }
    func getError(err: Error?) {
        handler?.error(err: err!);
    }
    
    
}
