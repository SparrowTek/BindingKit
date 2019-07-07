//
//  Bind.swift
//  Avocadough
//
//  Created by Thomas Rademaker on 3/20/19.
//  Copyright © 2019 SparrowTek LLC. All rights reserved.
//

import Foundation

public class Dynamic<T> {
    
    public typealias Listener = (T?) -> Void
    public var listener: Listener?
    
    public var value: T? {
        didSet{
            listener?(value)
        }
    }
    
    public init(_ value: T? = nil) {
        self.value = value
    }
    
    public func bind(listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}
