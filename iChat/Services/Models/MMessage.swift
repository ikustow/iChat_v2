//
//  MMessage.swift
//  iChat
//
//  Created by Ilya on 13.11.2022.
//

import UIKit

struct MMessage {
    let content: String
    let senderId: String
    let senderUsername: String
    var sendDate: Date
    let id: String?
    
    init(user: MUser, content: String){
        senderId = user.id
        senderUsername = user.username
        sendDate = Date()
        id = nil
        self.content = content
    }
    
    var representation: [String: Any] {
        let rep: [String: Any] = [
            "created": sendDate,
            "senderID": senderId,
            "senderName": senderUsername,
            "content": content
        ]
        return rep
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(senderId)
    }
    
    static func == (lhs: MMessage, rhs: MMessage) -> Bool {
        return lhs.senderId == rhs.senderId
    }
}
