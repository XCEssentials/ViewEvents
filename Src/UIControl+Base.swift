//
//  UIControl+Base.swift
//  MKHViewEvents
//
//  Created by Maxim Khatskevich on 12/1/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UIControl
{
    @discardableResult
    public
    func onTouchDown<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchDown)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onTouchDownRepeat<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchDownRepeat)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onTouchDragInside<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchDragInside)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onTouchDragOutside<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchDragOutside)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onTouchDragEnter<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchDragEnter)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onTouchDragExit<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchDragExit)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onTouchUpInside<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchUpInside)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onTouchUpOutside<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchUpOutside)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onTouchCancel<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .touchCancel)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onValueChanged<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .valueChanged)
        
        //===
        
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    public
    func onPrimaryActionTriggered<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .primaryActionTriggered)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onEditingDidBegin<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .editingDidBegin)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onEditingChanged<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .editingChanged)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onEditingDidEnd<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .editingDidEnd)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onEditingDidEndOnExit<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .editingDidEndOnExit)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onAllTouchEvents<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .allTouchEvents)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onAllEditingEvents<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .allEditingEvents)
        
        //===
        
        return self
    }
    
    @discardableResult
    public
    func onAllEvents<T: Any>(_ handler: Selector, at target: T? = nil) -> Self
    {
        self.addTarget(
            target,
            action: handler,
            for: .allEvents)
        
        //===
        
        return self
    }
}
