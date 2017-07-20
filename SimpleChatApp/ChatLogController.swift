//
//  ViewController.swift
//  SimpleChatApp
//
//  Created by apple on 19/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import UIKit
import Chatto
import ChattoAdditions

class ChatLogController: BaseChatViewController {
    
    var presenter: BasicChatInputBarPresenter!
    var decorator = Decorator()
    var dataSource = DataSource()
    
    override func createPresenterBuilders() -> [ChatItemType : [ChatItemPresenterBuilderProtocol]] {
        
        let textMessageBuilder = TextMessagePresenterBuilder(viewModelBuilder: TextBuilder(), interactionHandler: TextHandler())
        
        
        return [TextModel.chatItemType : [textMessageBuilder]]
    }
    
    override func createChatInputView() -> UIView {
        let inputBar = ChatInputBar.loadNib()
        var appearance = ChatInputBarAppearance()
        appearance.sendButtonAppearance.title = "Send"
        appearance.textInputAppearance.placeholderText = "Type a message"
        self.presenter = BasicChatInputBarPresenter(chatInputBar: inputBar, chatInputItems: [handleSend()], chatInputBarAppearance: appearance)
        return inputBar
    }
    
    
    func handleSend() -> TextChatInputItem {
        let item = TextChatInputItem()
        item.textInputHandler = { text in
            
            let date = Date()
            let senderId = "me"
            let timestamp = date.timeIntervalSinceReferenceDate
            
            let message = MessageModel(uid: "\(senderId, timestamp)", senderId: senderId, type: TextModel.chatItemType, isIncoming: false, date: date, status: .success)
            let textMessage = TextModel(messageModel: message, text: text)
            self.dataSource.addTextMessage(message: textMessage)
            
        }
        return item
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.chatDataSource = self.dataSource
        self.chatItemsDecorator = self.decorator
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

