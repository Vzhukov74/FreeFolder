//
//  DI.swift
//  FreeFolder
//
//  Created by Vladislav Zhukov on 26.04.2026.
//

import Service

struct DI {
    static func setup() {
        ServiceEnv.current.registerMain(IFileManagerService.self) {
            FileManagerService()
        }
    }
}
