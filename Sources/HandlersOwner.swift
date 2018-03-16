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
