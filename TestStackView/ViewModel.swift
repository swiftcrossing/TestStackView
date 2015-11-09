//
//  ViewModel.swift
//  TestStackView
//
//  Created by ノーランワーナー on 2015/11/09.
//  Copyright © 2015年 test. All rights reserved.
//

import UIKit

struct ViewModel {
    private(set) var dataObjectArray: [DataObject]
    
    init(_ count: Int) {
        dataObjectArray = []
        
        for _ in 1...count {
            let count = Int(arc4random_uniform(50) + 1)
            let contentsArray = Array(count: count, repeatedValue: "Stringy")
            let contents = contentsArray.joinWithSeparator(" ")
            let dataObject = DataObject(contents: contents)
            dataObjectArray.append(dataObject)
        }
    }
}
