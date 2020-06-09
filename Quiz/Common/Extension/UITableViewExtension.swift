//
//  UITableViewExtension.swift
//  Quiz
//
//  Created by Tong Yi on 6/5/20.
//  Copyright © 2020 Tong Yi. All rights reserved.
//

import UIKit

extension UITableView
{
    func register(_ type: UITableViewCell.Type)
    {
        let className = String(describing: type)
        register(type, forCellReuseIdentifier: className)
    }
    
    func dequeueReusableCell<T>(_ type: T.Type) -> T?
    {
        let className = String(describing: type)
        return dequeueReusableCell(withIdentifier: className) as? T
    }
}