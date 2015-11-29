//
//  Story.swift
//  Toilet Stories
//
//  Created by Jevin Sidhu on 2015-11-28.
//  Copyright © 2015 Jevin Sidhu. All rights reserved.
//

import Foundation
import SwiftyJSON

let shortLower : UInt32 = 0
let shortUpper : UInt32 = 3
var shortRandomNumber = Int(arc4random_uniform(shortUpper - shortLower) + shortLower)

let mediumLower : UInt32 = 3
let mediumUpper : UInt32 = 6
var mediumRandomNumber = Int(arc4random_uniform(mediumUpper - mediumLower) + mediumLower)

let largeLower : UInt32 = 6
let largeUpper : UInt32 = 9
var largeRandomNumber = Int(arc4random_uniform(largeUpper - largeLower) + largeLower)

class Story {
    
    var title = ""
    var author = ""
    var body = ""
    
    init(json : JSON) {
        title = json["result"][shortRandomNumber]["title"].string!
        author = json["result"][shortRandomNumber]["author"].string!
        body = json["result"][shortRandomNumber]["body"].string!

    }

}
