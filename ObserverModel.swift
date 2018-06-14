//
//  ObserverModel.swift
//  CheckoutOtpelf
//
//  Created by N.A Shashank on 29/05/18.
//  Copyright © 2018 Razorpay. All rights reserved.
//

import UIKit

struct ObserverModel {
    
    var dictObservers = [String:Any]()
    
    @discardableResult mutating func addObserver(name:String,observer:Any,selector:Selector,object:Any?) -> Bool {
        guard let _ = self.dictObservers[name] as? String else{
            NotificationCenter.default.addObserver(observer, selector: selector, name: NSNotification.Name(rawValue: name), object: object)
            self.dictObservers[name] = true
            return true
        }
        return false
    }
    
    @discardableResult mutating func removeObserver(name:String,observer:Any,object:Any?) -> Bool {
        guard let _ = self.dictObservers[name] as? String else{
            return false
        }
        NotificationCenter.default.removeObserver(observer, name: NSNotification.Name(rawValue: name), object: object)
        self.dictObservers[name] = nil
        return true
    }
    
}
