//
//  Story.swift
//  Toilet Stories
//
//  Created by Jevin Sidhu on 2015-11-28.
//  Copyright © 2015 Jevin Sidhu. All rights reserved.
//

import Foundation
import SwiftyJSON

class Story {
    
    
    var title = ""
    var author = ""
    var body = ""
    
    init(json : JSON) {
        title = json["result"][0]["title"].string!
        author = json["result"][0]["author"].string!
        body = json["result"][0]["body"].string!
    }
}