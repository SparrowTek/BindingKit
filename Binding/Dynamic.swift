//
//  Bind.swift
//  Avocadough
//
//  Created by Thomas Rademaker on 3/20/19.
//  Copyright © 2019 SparrowTek LLC. All rights reserved.
//

import Foundation

public class Dynamic<T> {
    
    typealias Listener = (T?) -> Void
    var listener: Listener?
    
    var value: T? {
        didSet{
            listener?(value)
        }
    }
    
    init(_ value: T? = nil) {
        self.value = value
    }
    
    func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
