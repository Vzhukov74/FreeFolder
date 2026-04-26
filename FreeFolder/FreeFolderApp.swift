//
//  FreeFolderApp.swift
//  FreeFolder
//
//  Created by Vladislav Zhukov on 26.04.2026.
//

import SwiftUI

@main
struct FreeFolderApp: App {
    
    init() {
        DI.setup()
    }
    
    var body: some Scene {
        WindowGroup {
            FolderContentView(
                vm: FolderContentViewModel(
                    url: nil
                )
            )
        }
    }
}
