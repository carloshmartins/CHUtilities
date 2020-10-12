//
//  ObjectSavable.swift
//  CinemaJestic
//
//  Created by Carlos Henrique Martins on 10/6/20.
//  Copyright © 2020 Carlos Henrique Martins. All rights reserved.
//

import Foundation

protocol ObjectSavable {
    func setCustomObject<Object>(_ object: Object, forKey: String) throws where Object: Encodable
    func getCustomObject<Object>(forKey: String, castTo type: Object.Type) throws -> Object where Object: Decodable
}
