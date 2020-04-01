//
//  StoryOpject.swift
//  FacebookMessenger
//
//  Created by shimaa_khairy on 2/29/20.
//  Copyright © 2020 shimaa_khairy. All rights reserved.
//

import Foundation
import UIKit
class StoryOpject {
    var image : UIImage?
    var name : String?
    var haveStory : Int?
    var online : Int?
    
    init(image:UIImage,name:String,haveStory:Int,online :Int) {
        self.image = image
        self.name = name
        self.haveStory = haveStory
        self.online = online
    }
}
