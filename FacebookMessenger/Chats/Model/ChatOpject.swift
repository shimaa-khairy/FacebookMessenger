//
//  ChatOpject.swift
//  FacebookMessenger
//
//  Created by shimaa_khairy on 2/24/20.
//  Copyright © 2020 shimaa_khairy. All rights reserved.
//

import Foundation
import UIKit
class ChatOpject {
    var image : UIImage?
    var name : String?
    var lastMessage : String?
    var seenImage : UIImage?
    var online : Int?
    
    init(image:UIImage,name:String,lastMessage:String,seenImage : UIImage,online :Int) {
        self.image = image
        self.name = name
        self.lastMessage = lastMessage
        self.seenImage = seenImage
        self.online = online
    }
}
