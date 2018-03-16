import UIKit

//---

public
struct PendingEventsOperation
{
    let source: UIControl
    let events: UIControlEvents
}

//---

public
extension PendingEventsOperation
{
    @discardableResult
    public
    func add<T: AnyObject>(_ handler: Selector, of target: T) -> UIControl
    {
        source.addTarget(
            target,
            action: handler,
            for: events
        )
        
        //---
        
        return source
    }
    
    @discardableResult
    public
    func remove<T: AnyObject>(_ handler: Selector, of target: T) -> UIControl
    {
        source.removeTarget(
            target,
            action: handler,
            for: events
        )
        
        //---
        
        return source
    }
    
    @discardableResult
    public
    func removeAllHandlers<T: AnyObject>(of target: T) -> UIControl
    {
        source.removeTarget(
            target,
            action: nil,
            for: events
        )
        
        //---
        
        return source
    }
    
    @discardableResult
    public
    func removeAllHandlers() -> UIControl
    {
        source.removeTarget(
            nil,
            action: nil,
            for: events
        )
        
        //---
        
        return source
    }
}
