//
//  WaitnigChatsNavigation.swift
//  iChat
//
//  Created by Ilya on 14.11.2022.
//

import Foundation

protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func changeToActive(chat: MChat)
}

