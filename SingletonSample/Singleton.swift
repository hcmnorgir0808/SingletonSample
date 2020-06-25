//
//  Singleton.swift
//  SingletonSample
//
//  Created by yaiwamoto on 25/06/2020.
//  Copyright © 2020 Yasutaka Iwamoto. All rights reserved.
//

import Foundation

class Singleton: NSObject {
    var data = Data(title: "", contents: "")

    static let sharedInstance = Singleton()
    
    private override init() {}

    func saveTitle(title: String) {
        data.title = title
    }

    func saveContents(content: String) {
        data.contents = content
    }

    func getTitle() -> String {
        return data.title
    }

    func getContents() -> String {
        return data.contents
    }
}
