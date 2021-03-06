//
//  MessageViewController.swift
//  Chatapp
//
//  Created by 権奈悟 on 2018/09/10.
//  Copyright © 2018年 nao. All rights reserved.
//

import UIKit
import JSQMessagesViewController

class MessageViewController: JSQMessagesViewController{
    
    
    
    /*var ref: Firebase!
    
    var messages: [JSQMessage]?
    var incomingBubble: JSQMessagesBubbleImage!
    var outgoingBubble: JSQMessagesBubbleImage!
    var incomingAvatar: JSQMessagesAvatarImage!
    var outgoingAvatar: JSQMessagesAvatarImage!
    
    func setupFirebase() {
        
        // firebaseのセットアップ
        ref = Firebase(url: "https://docs-examples.firebaseio.com/")
        
        // 最新25件のデータをデータベースから取得する
        // 最新のデータ追加されるたびに最新データを取得する
        ref.queryLimitedToLast(25).observeEventType(FEventType.ChildAdded, withBlock: { (snapshot) in
            let text = snapshot.value["text"] as? String
            let sender = snapshot.value["from"] as? String
            let name = snapshot.value["name"] as? String
            print(snapshot.value!)
            let message = JSQMessage(senderId: sender, displayName: name, text: text)
            self.messages?.append(message)
            self.finishReceivingMessage()
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputToolbar!.contentView!.leftBarButtonItem = nil
        automaticallyScrollsToMostRecentMessage = true
        
        
        //自分のsenderId, senderDisokayNameを設定
        self.senderId = "user1"
        self.senderDisplayName = "hoge"
        
        //吹き出しの設定
        let bubbleFactory = JSQMessagesBubbleImageFactory()
        self.incomingBubble = bubbleFactory?.incomingMessagesBubbleImage(with: UIColor.jsq_messageBubbleLightGray())
        self.outgoingBubble = bubbleFactory?.outgoingMessagesBubbleImage(with: UIColor.jsq_messageBubbleBlue())
        
        //アバターの設定
        self.incomingAvatar = JSQMessagesAvatarImageFactory.avatarImage(with: UIImage(named: "Swift-Logo")!, diameter: 64)
        self.outgoingAvatar = JSQMessagesAvatarImageFactory.avatarImage(with: UIImage(named: "Swift-Logo")!, diameter: 64)
        
        //メッセージデータの配列を初期化
        self.messages = []
        setupFirebase()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Sendボタンが押された時に呼ばれる
    override func didPressSendButton(button: UIButton!, withMessageText text: String!, senderId: String!, senderDisplayName: String!, date: NSDate!) {
        
        //メッセージの送信処理を完了する(画面上にメッセージが表示される)
        self.finishReceivingMessage(animated: true)
        
        //firebaseにデータを送信、保存する
        let post1 = ["from": senderId, "name": senderDisplayName, "text":text]
        let post1Ref = ref.childByAutoId()
        post1Ref.setValue(post1)
        
    }
    
    //アイテムごとに参照するメッセージデータを返す
    override func collectionView(collectionView: JSQMessagesCollectionView!, messageDataForItemAtIndexPath indexPath: NSIndexPath!) -> JSQMessageData! {
        return self.messages?[indexPath.item]
    }
    
    //アイテムごとのMessageBubble(背景)を返す
    override func collectionView(collectionView: JSQMessagesCollectionView!, messageBubbleImageDataForItemAtIndexPath indexPath: NSIndexPath!) -> JSQMessageBubbleImageDataSource! {
        let message = self.messages?[indexPath.item]
        if message?.senderId == self.senderId {
            return self.outgoingBubble
        }
        return self.incomingBubble
    }
    
    //アイテムごとにアバター画像を返す
    override func collectionView(collectionView: JSQMessagesCollectionView!, avatarImageDataForItemAtIndexPath indexPath: NSIndexPath!) -> JSQMessageAvatarImageDataSource! {
        let message = self.messages?[indexPath.item]
        if message?.senderId == self.senderId {
            return self.outgoingAvatar
        }
        return self.incomingAvatar
    }
    
    //アイテムの総数を返す
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (self.messages?.count)!
    }*/
    
    
}
