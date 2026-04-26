//
//  FileItem.swift
//  FreeFolder
//
//  Created by Vladislav Zhukov on 26.04.2026.
//

import Foundation

struct FileItem: Identifiable, Hashable {
    let id = UUID()
    let url: URL
    var name: String { url.lastPathComponent }
    var isDirectory: Bool { (try? url.resourceValues(forKeys: [.isDirectoryKey]).isDirectory) ?? false }
}
