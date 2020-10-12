//
//  Data.swift
//  Todoey
//
//  Created by Issei  on 2020/09/28.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
    //dynamic ... monitored for change, contrary to static.
}
