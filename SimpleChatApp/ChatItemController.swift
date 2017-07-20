//
//  ChatItemController.swift
//  SimpleChatApp
//
//  Created by apple on 19/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class ChatItemsController {
    
    var items = [ChatItemProtocol]()
    
    
    func insertItem(message: ChatItemProtocol) {
        
        self.items.append(message)
    }
    
}
