//
//  Decorator.swift
//  SimpleChatApp
//
//  Created by apple on 19/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class Decorator: ChatItemsDecoratorProtocol {
    
    
    
    
    
    func decorateItems(_ chatItems: [ChatItemProtocol]) -> [DecoratedChatItem] {
        
        var decoratedItems = [DecoratedChatItem]()
        
        for item in chatItems {
            
            let decoratedItem = DecoratedChatItem(chatItem: item, decorationAttributes: ChatItemDecorationAttributes(bottomMargin: 3, showsTail: false, canShowAvatar: false))
            decoratedItems.append(decoratedItem)
        }
        return decoratedItems
    }
}
