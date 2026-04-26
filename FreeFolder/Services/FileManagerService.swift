//
//  FileManagerService.swift
//  FreeFolder
//
//  Created by Vladislav Zhukov on 26.04.2026.
//

import Foundation

@MainActor protocol IFileManagerService {
    func itemsByRoot() throws -> [FileItem]
    func items(by url: URL) throws -> [FileItem]
}

struct FileManagerService: IFileManagerService {
    
    private let fileManager: FileManager
    
    init(fileManager: FileManager = .default) {
        self.fileManager = fileManager
    }
    
    func itemsByRoot() throws -> [FileItem] {
        try items(by: FileManager.documentsDirectory)
    }
    
    func items(by url: URL) throws -> [FileItem] {
        let urls = try fileManager.contentsOfDirectory(
            at: url,
            includingPropertiesForKeys: [.isDirectoryKey]
        )

        return urls.map { FileItem(url: $0) }
    }
    
    // ... удаление, создание папок, навигация
}
