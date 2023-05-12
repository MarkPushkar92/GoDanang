//
//  Coordinator.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//

import Foundation

protocol Coordinator: AnyObject {
    var coordinators: [Coordinator] { get set }
}
