//
//  ChatsCell.swift
//  FacebookMessenger
//
//  Created by shimaa_khairy on 2/19/20.
//  Copyright © 2020 shimaa_khairy. All rights reserved.
//

import UIKit

class ChatsCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var onlineImage: UIImageView!
   
    @IBOutlet weak var onlineTimeLabel: UILabel!
    @IBOutlet weak var FullNameLabel: UILabel!
    @IBOutlet weak var LastMessageLabel: UILabel!
    
    @IBOutlet weak var seenImage: UIImageView!
    func setData(chatOpject: ChatOpject){
        profileImage.image = chatOpject.image
        FullNameLabel.text = chatOpject.name
        LastMessageLabel.text = chatOpject.lastMessage
        seenImage.image = chatOpject.seenImage
        
        if chatOpject.online == 0 {
            // is online now
            onlineImage.backgroundColor = OnlineGreen
            onlineImage.borderWidth = 3
            onlineTimeLabel.text = ""
        }else if (chatOpject.online!<60) {
            //write minites
            onlineImage.backgroundColor = lightGreenColor
                       onlineImage.borderWidth = 3
            onlineTimeLabel.text = "\(chatOpject.online!)m"
                   }
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
