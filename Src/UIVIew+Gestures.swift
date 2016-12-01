//
//  UIVIew+Gestures.swift
//  MKHViewEvents
//
//  Created by Maxim Khatskevich on 12/1/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UIView
{
    @discardableResult
    public
    func onTapGesture<T: Any>(
        _ handler: Selector,
        at target: T,
        configuration: ((_: UITapGestureRecognizer) -> Void)? = nil) -> Self
    {
        let g = UITapGestureRecognizer(target: target, action: handler)
        
        configuration.map{ $0(g) }
        
        //===
        
        self.addGestureRecognizer(g)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onPinchGesture<T: Any>(
        _ handler: Selector,
        at target: T,
        configuration: ((_: UIPinchGestureRecognizer) -> Void)? = nil) -> Self
    {
        let g = UIPinchGestureRecognizer(target: target, action: handler)
        
        configuration.map{ $0(g) }
        
        //===
        
        self.addGestureRecognizer(g)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onPanGesture<T: Any>(
        _ handler: Selector,
        at target: T,
        configuration: ((_: UIPanGestureRecognizer) -> Void)? = nil) -> Self
    {
        let g = UIPanGestureRecognizer(target: target, action: handler)
        
        configuration.map{ $0(g) }
        
        //===
        
        self.addGestureRecognizer(g)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onSwipeGesture<T: Any>(
        _ handler: Selector,
        at target: T,
        configuration: ((_: UISwipeGestureRecognizer) -> Void)? = nil) -> Self
    {
        let g = UISwipeGestureRecognizer(target: target, action: handler)
        
        configuration.map{ $0(g) }
        
        //===
        
        self.addGestureRecognizer(g)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onLongPressGesture<T: Any>(
        _ handler: Selector,
        at target: T,
        configuration: ((_: UILongPressGestureRecognizer) -> Void)? = nil) -> Self
    {
        let g = UILongPressGestureRecognizer(target: target, action: handler)
        
        configuration.map{ $0(g) }
        
        //===
        
        self.addGestureRecognizer(g)
        
        //===
        
        return self
    }
}
