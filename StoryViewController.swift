//
//  StoryViewController.swift
//  Toilet Stories
//
//  Created by Jevin Sidhu on 2015-09-21.
//  Copyright © 2015 Jevin Sidhu. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class StoryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Alamofire.request(.GET, "https://sheetsu.com/apis/73391d9b")
            .responseJSON { response in
                switch response.result {
                case .Success:
                    if let value = response.result.value {
                        let json = JSON(value)
                        let story = Story(json: json)
                        print(story.title)
                        print(story.author)
                        print(story.body)

                    }
                case .Failure(let error):
                    print(error)
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
