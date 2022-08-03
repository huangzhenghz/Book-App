//
//  Book_APP.swift
//  Book APP
//
//  Created by zheng huang on 8/3/22.
//

import SwiftUI

@main
struct Book_APP: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ModelView())
//            DetailView(result: ModelView().result[0])
        }
    }
}
