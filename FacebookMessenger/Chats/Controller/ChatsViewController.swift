//
//  ChatsViewController.swift
//  FacebookMessenger
//
//  Created by shimaa_khairy on 2/9/20.
//  Copyright © 2020 shimaa_khairy. All rights reserved.
import Foundation
import UIKit
class ChatsViewController : UIViewController {
    @IBOutlet weak var chatsTableView: UITableView!
    
    @IBOutlet weak var onlineCollectionView: UICollectionView!
    var chats : [ChatOpject] = []
    var friensHaveStories : [StoryOpject] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initializeNibFiles()
        
    }
    func initUI(){
        chatsTableView.delegate = self
        chatsTableView.dataSource = self
        chats = createDefaultChats()
        friensHaveStories = createDefaultFriendsStories()
        onlineCollectionView.delegate = self
        onlineCollectionView.dataSource = self
    }
    func initializeNibFiles(){
        let cellNib = UINib(nibName: "ChatsCell", bundle: nil)
        chatsTableView.register(cellNib, forCellReuseIdentifier: "ChatsCell")
    }
    func createDefaultChats ()->[ChatOpject]{
        var chats :[ChatOpject] = []
        
        let chat3 = ChatOpject(image:#imageLiteral(resourceName: "ProfilePic1"), name: "Shimaa Khairy", lastMessage:"You: Love you too <3  20:00",seenImage:#imageLiteral(resourceName: "ProfilePic1"), online: 20)
        chats.append(chat3)
        let chat4 = ChatOpject(image:#imageLiteral(resourceName: "ProfilePic2"), name: "Shimooo", lastMessage:"You: take care . 22:10",seenImage:#imageLiteral(resourceName: "ProfilePic2"), online: 0)
        chats.append(chat4)
        let chat5 = ChatOpject(image:#imageLiteral(resourceName: "ProfilePic1"), name: "Shimaa Khairy", lastMessage:"You: Love you too <3  20:00",seenImage:#imageLiteral(resourceName: "ProfilePic1"), online: 70)
        chats.append(chat5)
        let chat6 = ChatOpject(image:#imageLiteral(resourceName: "ProfilePic2"), name: "Shimooo", lastMessage:"You: take care . 22:10",seenImage:#imageLiteral(resourceName: "ProfilePic2"), online: 57)
        chats.append(chat6)
        
        let chat7 = ChatOpject(image:#imageLiteral(resourceName: "ProfilePic1"), name: "Shimaa Khairy", lastMessage:"You: Love you too <3  20:00",seenImage:#imageLiteral(resourceName: "ProfilePic1"), online: 70)
        chats.append(chat7)
        let chat8 = ChatOpject(image:#imageLiteral(resourceName: "ProfilePic2"), name: "Shimooo", lastMessage:"You: take care . 22:10",seenImage:#imageLiteral(resourceName: "ProfilePic2"), online: 57)
        chats.append(chat8)
        
        return chats
        
    }
    func createDefaultFriendsStories()->[StoryOpject]{
        var stories:[StoryOpject] = []
        let story1 = StoryOpject(image: #imageLiteral(resourceName: "ProfilePic1"), name: "Shimoo", haveStory: 1, online: 0)
        stories.append(story1)
        let story2 = StoryOpject(image: #imageLiteral(resourceName: "ProfilePic1"), name: "Shimaa", haveStory: 1, online: 0)
        stories.append(story2)
        let story3 = StoryOpject(image: #imageLiteral(resourceName: "ProfilePic2"), name: "Shimoo", haveStory: 0, online: 0)
        stories.append(story3)
        let story4 = StoryOpject(image: #imageLiteral(resourceName: "ProfilePic1"), name: "Shimaa", haveStory: 2, online: 1)
        stories.append(story4)
        let story5 = StoryOpject(image: #imageLiteral(resourceName: "ProfilePic2"), name: "Shimoo", haveStory: 1, online: 0)
        stories.append(story5)
        let story6 = StoryOpject(image: #imageLiteral(resourceName: "ProfilePic1"), name: "Shimaa", haveStory: 1, online: 0)
        stories.append(story6)
        let story7 = StoryOpject(image: #imageLiteral(resourceName: "ProfilePic2"), name: "Shimoo", haveStory: 1, online: 0)
        stories.append(story7)
        
        return stories
    }
}
extension ChatsViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatsCell", for:indexPath) as! ChatsCell
        cell.setData(chatOpject: chats[indexPath.row])
        
        return cell
    }
    
    
}
extension ChatsViewController :UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friensHaveStories.count+1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! StoriesCollectionViewCell
        if indexPath.row == 0{
            cell.setCellData(opject: friensHaveStories[(indexPath.row)],index:indexPath.row)
            
        }else {
            cell.setCellData(opject: friensHaveStories[(indexPath.row)-1],index:indexPath.row)
            
        }
        return cell
    }
    
    
}
