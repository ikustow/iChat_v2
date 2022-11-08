//
//  SelfConfiguringCell.swift
//  iChat
//
//  Created by Ilya on 09.11.2022.
//

import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
