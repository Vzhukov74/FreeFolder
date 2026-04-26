//
//  Untitled.swift
//  FreeFolder
//
//  Created by Vladislav Zhukov on 26.04.2026.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
}
