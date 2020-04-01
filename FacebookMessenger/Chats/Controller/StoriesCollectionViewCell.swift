//
//  StoriesCollectionViewCell.swift
//  FacebookMessenger
//
//  Created by shimaa_khairy on 2/29/20.
//  Copyright © 2020 shimaa_khairy. All rights reserved.
//

import UIKit

class StoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var onlineImage: UIImageView!
    @IBOutlet weak var storyView: UIView!
    
    func setCellData (opject : StoryOpject,index : Int){
        if index == 0 {
            profileImage.image = #imageLiteral(resourceName: "plus")
            profileImage.contentMode = .center
            nameLabel.text = "Your Story"
        }else{
        profileImage.image = opject.image
        nameLabel.text = opject.name
        if opject.online == 0 {
            // is online
            onlineImage.backgroundColor = OnlineGreen
            onlineImage.borderWidth = 3
        }else{
            //not online
        }
        if opject.haveStory == 1{
            //have story and not seen
            storyView.borderColor = UIColor.systemBlue
        }else if opject.haveStory == 2{
            //have story and seen
            storyView.borderColor = UIColor.darkGray
        }else {
            //have no story default no color
        }
        }
        
    }
    
}
