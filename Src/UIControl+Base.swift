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
