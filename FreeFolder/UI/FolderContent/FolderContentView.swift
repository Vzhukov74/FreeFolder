//
//  FolderContentView.swift
//  FreeFolder
//
//  Created by Vladislav Zhukov on 26.04.2026.
//

import SwiftUI

struct FolderContentView: View {
    
    @StateObject var vm: FolderContentViewModel
    
    @State var showDocPicker: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.items) { item in
                    if item.isDirectory {
                        NavigationLink(item.name, value: item.url)
                    } else {
                        Label(item.name, systemImage: "doc")
                    }
                }
            }
            .navigationTitle(vm.url?.lastPathComponent ?? "root")
        }
    }
}

// добавить импорт из галереи
// добавить импорт из файлов
// добавить превью документов
// добавить удаление
// добавить создание папки
// добавить возможность переименовать файлы
// добавить возможность переноса файлов
// добавить возможность копирования фалов
