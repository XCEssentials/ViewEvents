/*

 MIT License

 Copyright (c) 2016 Maxim Khatskevich (maxim@khatskevi.ch)

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.

 */

import UIKit

//---

public
protocol HandlersOwner: class { }

//--- MARK: UIControl events support

public
extension HandlersOwner
{
    @discardableResult
    public
    func bind(_ handler: Selector, with events: PendingEventsOperation) -> Self
    {
        events.add(handler, of: self)
        
        //---
        
        return self
    }
    
    @discardableResult
    public
    func unbind(_ handler: Selector, with events: PendingEventsOperation) -> Self
    {
        events.remove(handler, of: self)
        
        //---
        
        return self
    }
    
    @discardableResult
    public
    func unbindAllHandlers(with events: PendingEventsOperation) -> Self
    {
        events.removeAllHandlers(of: self)
        
        //---
        
        return self
    }
}

//--- MARK: UIView gesture recognizers support

public
extension HandlersOwner
{
    @discardableResult
    public
    func bind<Recognizer: UIGestureRecognizer>(
        _ handler: Selector,
        with recognizer: Recognizer
        ) -> Self
    {
        recognizer.addTarget(
            self,
            action: handler
        )
        
        //---
        
        return self
    }
    
    @discardableResult
    public
    func bind<Recognizer>(
        _ handler: Selector,
        with gesture: PendingRecognizerOperation<Recognizer>,
        configuration: ((Recognizer) -> Void)
        ) -> Self
    {
        gesture.addRecognizer(
            with: handler,
            of: self,
            configuration: configuration
        )
        
        //---
        
        return self
    }
    
    @discardableResult
    public
    func bind<Recognizer>(
        _ handler: Selector,
        with gesture: PendingRecognizerOperation<Recognizer>
        ) -> Recognizer
    {
        return gesture.addRecognizer(
            with: handler,
            of: self
        )
    }
    
    @discardableResult
    public
    func unbind<Recognizer: UIGestureRecognizer>(
        _ handler: Selector,
        with recognizer: Recognizer
        ) -> Self
    {
        recognizer.removeTarget(
            self,
            action: handler
        )
        
        //---
        
        return self
    }
    
    @discardableResult
    public
    func unbindAllHandlers<Recognizer: UIGestureRecognizer>(
        with recognizer: Recognizer
        ) -> Self
    {
        recognizer.removeTarget(
            self,
            action: nil
        )
        
        //---
        
        return self
    }
}
