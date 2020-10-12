//
//  ViewCodable.swift
//  CinemaJestic
//
//  Created by Carlos Henrique Martins on 10/8/20.
//  Copyright © 2020 Carlos Henrique Martins. All rights reserved.
//

import UIKit

public protocol ViewCodable: AnyObject {
    func buildView()
    func setupSubviews()
    func setupContraints()
    func additionalSetup()
}

extension ViewCodable where Self: UIView {
    func additionalSetup() {}
    func buildView() {
        setupSubviews()
        setupContraints()
    }
}

extension ViewCodable where Self: UIViewController {
    func additionalSetup() {}
    func buildView() {
        setupSubviews()
        setupContraints()
    }
}
