//
//  DataObject.swift
//  TestStackView
//
//  Created by ノーランワーナー on 2015/11/09.
//  Copyright © 2015年 test. All rights reserved.
//

import UIKit

struct DataObject {
    init(userImageName: String = "profile_default", userName: String = "Name", contents: String = "Contents", dateString: String = "13/01/27 12:37") {
        self.userImageName = userImageName
        self.userName = userName
        self.contents = contents
        self.dateString = dateString
        self.willShowDate = Int(arc4random_uniform(2)) == 1 ? true : false
    }
    
    var userImageName: String
    var userName: String
    var contents: String
    var dateString: String
    var willShowDate: Bool
    var dateLabelHeight: CGFloat {
        get {
            return willShowDate ? 17 : 0
        }
    }
}
