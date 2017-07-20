//
//  TextModel.swift
//  SimpleChatApp
//
//  Created by apple on 19/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class TextModel: TextMessageModel<MessageModel> {
    
    
    static let chatItemType = "text"
    
    override init(messageModel: MessageModel, text: String) {
        super.init(messageModel: messageModel, text: text)
    }
    
}
