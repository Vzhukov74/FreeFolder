//
//  FolderContentViewModel.swift
//  FreeFolder
//
//  Created by Vladislav Zhukov on 26.04.2026.
//

import Foundation
import Combine
import Service

final class FolderContentViewModel: ObservableObject {
    
    @Published var items: [FileItem] = []
    
    let url: URL?
    @Service var fileManager: IFileManagerService
    
    init(url: URL? = nil) {
        self.url = url
    }
    
    func onAppear() {
        if let url = url {
            items = (try? fileManager.items(by: url)) ?? []
        } else {
            items = (try? fileManager.itemsByRoot()) ?? []
        }
    }
}
